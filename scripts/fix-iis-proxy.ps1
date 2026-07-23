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

function Grant-IisFolderAccess([string]$Path) {
    $accounts = @('IIS_IUSRS', 'IUSR', 'NT AUTHORITY\IUSR')
    foreach ($account in $accounts) {
        & icacls $Path /grant "${account}:(OI)(CI)R" /T | Out-Null
    }
}

function Test-IisModule([string]$Name) {
    return [bool](Get-WebGlobalModule -Name $Name -ErrorAction SilentlyContinue)
}

if (-not (Test-Administrator)) {
    throw 'Execute como Administrador.'
}

Write-Host "=== Corrigindo IIS proxy para $DomainName ===" -ForegroundColor Cyan

$backendUri = [Uri]$BackendUrl.TrimEnd('/')
$backendOrigin = '{0}://{1}:{2}' -f $backendUri.Scheme, $backendUri.Host, $backendUri.Port
$rewriteTarget = '{0}/{1}' -f $backendOrigin, '{R:1}'

Import-Module WebAdministration -ErrorAction Stop

if (-not (Test-IisModule 'RewriteModule')) {
    throw 'URL Rewrite nao instalado. Rode primeiro: .\scripts\setup-iis-proxy.ps1'
}

if (-not (Test-IisModule 'ApplicationRequestRouting')) {
    throw 'ARR nao instalado. Rode primeiro: .\scripts\setup-iis-proxy.ps1'
}

$appcmd = Join-Path $env:windir 'System32\inetsrv\appcmd.exe'
& $appcmd set config -section:system.webServer/proxy /enabled:"True" /commit:apphost | Out-Null

Write-Host "Criando pasta $ProxyPath ..." -ForegroundColor Cyan
New-Item -ItemType Directory -Force -Path $ProxyPath | Out-Null
Grant-IisFolderAccess -Path $ProxyPath

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
        </rule>
      </rules>
    </rewrite>
  </system.webServer>
</configuration>
"@

Set-Content -LiteralPath $webConfigPath -Value $webConfig -Encoding UTF8
Write-Host "web.config criado." -ForegroundColor Green

if ($StopDefaultSite) {
    Stop-Website -Name 'Default Web Site' -ErrorAction SilentlyContinue
    Write-Host 'Default Web Site parado.' -ForegroundColor Yellow
}

$binding = "*:${Port}:$DomainName"
$existingSite = Get-Website -Name $SiteName -ErrorAction SilentlyContinue

if ($existingSite) {
    Write-Host "Atualizando site '$SiteName' ..." -ForegroundColor Cyan
    Set-ItemProperty "IIS:\Sites\$SiteName" -Name physicalPath -Value $ProxyPath
    Set-ItemProperty "IIS:\Sites\$SiteName" -Name bindings -Value @{ protocol = 'http'; bindingInformation = $binding }
}
else {
    Write-Host "Criando site '$SiteName' ..." -ForegroundColor Cyan
    New-Website -Name $SiteName -Port $Port -HostHeader $DomainName -PhysicalPath $ProxyPath | Out-Null
}

Start-Website -Name $SiteName

Write-Host ''
Write-Host '=== Diagnostico ===' -ForegroundColor Cyan
Write-Host "Pasta existe : $(Test-Path $ProxyPath)"
Write-Host "web.config   : $(Test-Path $webConfigPath)"
Get-Website -Name $SiteName | Format-List Name, State, PhysicalPath, Bindings

Write-Host 'Testando backend Waitress ...' -ForegroundColor Cyan
try {
    $backend = Invoke-WebRequest -Uri $backendOrigin -UseBasicParsing -TimeoutSec 5
    Write-Host "Backend OK: $($backend.StatusCode)" -ForegroundColor Green
}
catch {
    Write-Host "Backend FALHOU em $backendOrigin" -ForegroundColor Red
    Write-Host $_.Exception.Message -ForegroundColor Red
    Write-Host 'Suba a app antes:' -ForegroundColor Yellow
    Write-Host "  cd C:\apps\protect-tool"
    Write-Host '  .\.venv\Scripts\Activate.ps1'
    Write-Host '  .\scripts\install-windows-task.ps1 -StartNow'
}

Write-Host ''
Write-Host "Pronto. Acesse: http://$DomainName" -ForegroundColor Green
