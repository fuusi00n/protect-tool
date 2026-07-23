[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string]$DomainName,

    [string]$SiteName = 'ProtectTool',

    [string]$BackendUrl = 'http://127.0.0.1:5000',

    [string]$ProxyPath = 'C:\inetpub\protect-tool-proxy',

    [int]$Port = 80,

    [switch]$StopDefaultSite
)

$ErrorActionPreference = 'Stop'

function Test-Administrator {
    $identity = [Security.Principal.WindowsIdentity]::GetCurrent()
    $principal = New-Object Security.Principal.WindowsPrincipal($identity)
    return $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
}

function Assert-Command([string]$Name) {
    if (-not (Get-Command $Name -ErrorAction SilentlyContinue)) {
        throw "Comando '$Name' nao encontrado."
    }
}

function Install-WindowsFeatureIfAvailable([string[]]$FeatureNames) {
    if (Get-Command Install-WindowsFeature -ErrorAction SilentlyContinue) {
        $result = Install-WindowsFeature -Name $FeatureNames -IncludeManagementTools
        if ($result.RestartNeeded -eq 'Yes') {
            Write-Warning 'Reinicio do Windows pode ser necessario para concluir a instalacao do IIS.'
        }
        return
    }

    if (Get-Command Enable-WindowsOptionalFeature -ErrorAction SilentlyContinue) {
        foreach ($feature in $FeatureNames) {
            Enable-WindowsOptionalFeature -Online -FeatureName $feature -All -NoRestart | Out-Null
        }
        return
    }

    throw 'Nao foi possivel instalar recursos do IIS nesta maquina.'
}

function Install-MsiIfMissing {
    param(
        [string]$DisplayName,
        [string]$DownloadUrl,
        [string]$RegistryProductName
    )

    $installed = Get-ChildItem 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall',
        'HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall' -ErrorAction SilentlyContinue |
        ForEach-Object { Get-ItemProperty $_.PSPath } |
        Where-Object { $_.DisplayName -like "*$RegistryProductName*" } |
        Select-Object -First 1

    if ($installed) {
        Write-Host "$DisplayName ja instalado." -ForegroundColor DarkGray
        return
    }

    $tempMsi = Join-Path $env:TEMP ("iis-proxy-" + [guid]::NewGuid().ToString('N') + '.msi')
    Write-Host "Baixando $DisplayName..." -ForegroundColor Cyan
    Invoke-WebRequest -Uri $DownloadUrl -OutFile $tempMsi -UseBasicParsing

    Write-Host "Instalando $DisplayName..." -ForegroundColor Cyan
    $arguments = @('/i', $tempMsi, '/qn', '/norestart')
    $process = Start-Process -FilePath 'msiexec.exe' -ArgumentList $arguments -Wait -PassThru
    Remove-Item -LiteralPath $tempMsi -Force -ErrorAction SilentlyContinue

    if ($process.ExitCode -ne 0) {
        throw "Falha ao instalar $DisplayName. Codigo: $($process.ExitCode)"
    }
}

if (-not (Test-Administrator)) {
    throw 'Execute este script como Administrador.'
}

Assert-Command 'powershell'

$backendUri = [Uri]$BackendUrl.TrimEnd('/')
$backendOrigin = '{0}://{1}:{2}' -f $backendUri.Scheme, $backendUri.Host, $backendUri.Port
$rewriteTarget = '{0}/{1}' -f $backendOrigin, '{R:1}'
$forwardedProto = if ($Port -eq 443) { 'https' } else { 'http' }

Write-Host "Configurando IIS reverse proxy para $DomainName -> $backendOrigin" -ForegroundColor Cyan

Write-Host 'Instalando IIS...' -ForegroundColor Cyan
Install-WindowsFeatureIfAvailable @(
    'Web-Server',
    'Web-WebServer',
    'Web-Common-Http',
    'Web-Default-Doc',
    'Web-Static-Content',
    'Web-Http-Errors',
    'Web-Stat-Compression',
    'Web-Mgmt-Console'
)

Install-MsiIfMissing `
    -DisplayName 'URL Rewrite 2.1' `
    -DownloadUrl 'https://download.microsoft.com/download/1/2/8/128E2FF4-E17E-4E02-A8C2-15AE20296E81/rewrite_amd64_en-US.msi' `
    -RegistryProductName 'URL Rewrite'

Install-MsiIfMissing `
    -DisplayName 'Application Request Routing 3.0' `
    -DownloadUrl 'https://download.microsoft.com/download/4/9/C/49CD28DB-F574-40E5-8EF8-C561DD30B1B8/requestRouter_amd64.msi' `
    -RegistryProductName 'Application Request Routing'

$appcmd = Join-Path $env:windir 'System32\inetsrv\appcmd.exe'
if (-not (Test-Path -LiteralPath $appcmd)) {
    throw "appcmd.exe nao encontrado em $appcmd"
}

Write-Host 'Habilitando proxy no ARR...' -ForegroundColor Cyan
& $appcmd set config -section:system.webServer/proxy /enabled:"True" /commit:apphost | Out-Null

$allowedVariables = @(
    'HTTP_X_FORWARDED_FOR',
    'HTTP_X_FORWARDED_PROTO',
    'HTTP_X_FORWARDED_HOST'
)

foreach ($variable in $allowedVariables) {
    $existing = & $appcmd list config -section:system.webServer/rewrite/allowedServerVariables 2>$null
    if ($existing -notmatch [regex]::Escape($variable)) {
        & $appcmd set config -section:system.webServer/rewrite/allowedServerVariables /+"[name='$variable']" /commit:apphost | Out-Null
    }
}

New-Item -ItemType Directory -Force -Path $ProxyPath | Out-Null

foreach ($account in @('IIS_IUSRS', 'IUSR', 'NT AUTHORITY\IUSR')) {
    & icacls $ProxyPath /grant "${account}:(OI)(CI)R" /T | Out-Null
}

$webConfigPath = Join-Path $ProxyPath 'web.config'
$webConfig = @"
<?xml version="1.0" encoding="UTF-8"?>
<configuration>
  <system.webServer>
    <directoryBrowse enabled="false" />
    <rewrite>
      <rules>
        <rule name="ReverseProxyToWaitress" stopProcessing="true">
          <match url="(.*)" />
          <action type="Rewrite" url="$rewriteTarget" />
          <serverVariables>
            <set name="HTTP_X_FORWARDED_FOR" value="{REMOTE_ADDR}" />
            <set name="HTTP_X_FORWARDED_PROTO" value="$forwardedProto" />
            <set name="HTTP_X_FORWARDED_HOST" value="{HTTP_HOST}" />
          </serverVariables>
        </rule>
      </rules>
    </rewrite>
  </system.webServer>
</configuration>
"@

Set-Content -LiteralPath $webConfigPath -Value $webConfig -Encoding UTF8

Import-Module WebAdministration -ErrorAction Stop

if ($StopDefaultSite) {
    if (Get-Website -Name 'Default Web Site' -ErrorAction SilentlyContinue) {
        Write-Host 'Parando Default Web Site...' -ForegroundColor Yellow
        Stop-Website -Name 'Default Web Site'
    }
}

$existingSite = Get-Website -Name $SiteName -ErrorAction SilentlyContinue
if ($existingSite) {
    Write-Host "Atualizando site IIS '$SiteName'..." -ForegroundColor Cyan
    Set-ItemProperty "IIS:\Sites\$SiteName" -Name physicalPath -Value $ProxyPath
    Set-ItemProperty "IIS:\Sites\$SiteName" -Name bindings -Value @{ protocol = 'http'; bindingInformation = "*:${Port}:$DomainName" }
    if ($existingSite.State -ne 'Started') {
        Start-Website -Name $SiteName
    }
}
else {
    Write-Host "Criando site IIS '$SiteName'..." -ForegroundColor Cyan
    New-Website -Name $SiteName -Port $Port -HostHeader $DomainName -PhysicalPath $ProxyPath | Out-Null
}

Write-Host ''
Write-Host 'IIS reverse proxy configurado.' -ForegroundColor Green
Write-Host "Dominio : http://$DomainName" -ForegroundColor Green
Write-Host "Backend : $backendOrigin" -ForegroundColor Green
Write-Host "Pasta   : $ProxyPath" -ForegroundColor Green
Write-Host ''
Write-Host 'Proximos passos na VPS:' -ForegroundColor Yellow
Write-Host "1. Confirme Waitress rodando em $backendOrigin"
Write-Host "2. No .env, defina PUBLIC_APP_BASE_URL=https://$DomainName"
Write-Host '3. Teste: Invoke-WebRequest http://127.0.0.1:5000 -UseBasicParsing'
Write-Host "4. Teste: Invoke-WebRequest http://$DomainName -UseBasicParsing -Headers @{ Host = '$DomainName' }"
Write-Host ''
Write-Host 'Se ainda aparecer a pagina padrao do IIS, pare o Default Web Site:' -ForegroundColor Yellow
Write-Host 'Stop-Website -Name "Default Web Site"'
