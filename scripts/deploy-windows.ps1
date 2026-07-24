[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string]$HostName,

    [Parameter(Mandatory = $true)]
    [string]$UserName,

    [Parameter(Mandatory = $true)]
    [string]$RemotePath,

    [int]$Port = 22,

    [string]$IdentityFile
)

$ErrorActionPreference = 'Stop'

function Assert-Command([string]$Name) {
    if (-not (Get-Command $Name -ErrorAction SilentlyContinue)) {
        throw "Comando '$Name' nao encontrado. Instale/ative o OpenSSH Client do Windows."
    }
}

Assert-Command git
Assert-Command scp
Assert-Command ssh

$projectRoot = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$temporaryRoot = Join-Path ([IO.Path]::GetTempPath()) ("katana-deploy-" + [guid]::NewGuid().ToString('N'))
$stagePath = Join-Path $temporaryRoot 'package'
$archivePath = Join-Path $temporaryRoot 'protect-tool.zip'
$remoteApplyLocal = Join-Path $PSScriptRoot 'remote-apply.ps1'
$remoteArchiveName = "protect-tool-deploy-$([guid]::NewGuid().ToString('N')).zip"
$remoteApplyName = "protect-tool-apply-$([guid]::NewGuid().ToString('N')).ps1"
$remoteTarget = "${UserName}@${HostName}"

if (-not (Test-Path -LiteralPath $remoteApplyLocal -PathType Leaf)) {
    throw "Script remoto nao encontrado: $remoteApplyLocal"
}

try {
    New-Item -ItemType Directory -Force -Path $stagePath | Out-Null

    Push-Location $projectRoot
    try {
        $files = @(git ls-files --cached --others --exclude-standard)
        if ($LASTEXITCODE -ne 0) {
            throw 'Nao foi possivel obter a lista de arquivos do Git.'
        }
    }
    finally {
        Pop-Location
    }

    $files = @($files | Where-Object {
        $_ -and
        $_ -notmatch '(^|/)[^/]*\.env$' -and
        $_ -notmatch '(^|/)\.git(/|$)' -and
        $_ -notmatch '(^|/)\.venv(/|$)' -and
        $_ -notmatch '(^|/)__pycache__(/|$)'
    })

    if ($files.Count -eq 0) {
        throw 'Nenhum arquivo encontrado para o deploy.'
    }

    foreach ($relativePath in $files) {
        $source = Join-Path $projectRoot ($relativePath.Replace('/', [IO.Path]::DirectorySeparatorChar))
        if (-not (Test-Path -LiteralPath $source -PathType Leaf)) {
            continue
        }
        $destination = Join-Path $stagePath ($relativePath.Replace('/', [IO.Path]::DirectorySeparatorChar))
        $destinationDirectory = Split-Path -Parent $destination
        New-Item -ItemType Directory -Force -Path $destinationDirectory | Out-Null
        Copy-Item -LiteralPath $source -Destination $destination -Force
    }

    Compress-Archive -Path (Join-Path $stagePath '*') -DestinationPath $archivePath -CompressionLevel Optimal

    $sshOptions = @('-p', $Port.ToString())
    $scpOptions = @('-P', $Port.ToString())
    if ($IdentityFile) {
        $resolvedIdentity = (Resolve-Path -LiteralPath $IdentityFile).Path
        $sshOptions += @('-i', $resolvedIdentity)
        $scpOptions += @('-i', $resolvedIdentity)
    }

    Write-Host "Enviando $($files.Count) arquivos para $remoteTarget..." -ForegroundColor Cyan
    & scp @scpOptions -- $archivePath "${remoteTarget}:$remoteArchiveName"
    if ($LASTEXITCODE -ne 0) {
        throw 'Falha no envio do zip via SCP.'
    }
    & scp @scpOptions -- $remoteApplyLocal "${remoteTarget}:$remoteApplyName"
    if ($LASTEXITCODE -ne 0) {
        throw 'Falha no envio do script remoto via SCP.'
    }

    $remoteCommand = "powershell -NoProfile -ExecutionPolicy Bypass -File `"$remoteApplyName`" -Target `"$RemotePath`" -ArchiveName `"$remoteArchiveName`""
    Write-Host 'Aplicando pacote na VPS...' -ForegroundColor Cyan
    & ssh @sshOptions -- $remoteTarget $remoteCommand
    $remoteExit = $LASTEXITCODE

    & ssh @sshOptions -- $remoteTarget "del /F /Q $remoteApplyName 2>nul & del /F /Q $remoteArchiveName 2>nul" | Out-Null

    if ($remoteExit -ne 0) {
        throw 'O pacote foi enviado, mas a etapa remota falhou. Veja as linhas [deploy] acima.'
    }

    Write-Host 'Deploy concluido. O arquivo .env remoto foi preservado.' -ForegroundColor Green
}
finally {
    if (Test-Path -LiteralPath $temporaryRoot) {
        Remove-Item -LiteralPath $temporaryRoot -Recurse -Force
    }
}
