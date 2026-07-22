[CmdletBinding()]
param(
    [string]$RepositoryPath,
    [string]$ConfigPath = (Join-Path $PSScriptRoot "local.env")
)

$ErrorActionPreference = "Stop"

function Import-EnvFile {
    param([Parameter(Mandatory)][string]$Path)
    if (-not (Test-Path -LiteralPath $Path)) {
        throw "Configuracao ausente: $Path. Copie local.env.example para local.env."
    }
    foreach ($line in Get-Content -LiteralPath $Path) {
        $trimmed = $line.Trim()
        if (-not $trimmed -or $trimmed.StartsWith("#")) { continue }
        $parts = $trimmed.Split("=", 2)
        if ($parts.Count -ne 2) { throw "Linha invalida em ${Path}: $line" }
        Set-Item -Path "Env:$($parts[0].Trim())" -Value $parts[1].Trim()
    }
}

function Assert-Administrator {
    $identity = [Security.Principal.WindowsIdentity]::GetCurrent()
    $principal = [Security.Principal.WindowsPrincipal]::new($identity)
    if (-not $principal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
        throw "Abra o PowerShell como Administrador para configurar btcpay.local."
    }
}

Import-EnvFile -Path $ConfigPath

if (-not $RepositoryPath) {
    $RepositoryPath = [IO.Path]::GetFullPath((Join-Path $PSScriptRoot "..\..\..\btcpayserver-docker"))
}
if (-not (Get-Command docker -ErrorAction SilentlyContinue)) {
    throw "Docker CLI nao encontrado. Reinicie o terminal apos instalar o Docker Desktop."
}
docker info *> $null
if ($LASTEXITCODE -ne 0) {
    throw "Docker Desktop nao esta pronto. Abra-o, aceite os termos e aguarde o Engine iniciar."
}

if (-not (Test-Path -LiteralPath (Join-Path $RepositoryPath ".git"))) {
    git clone https://github.com/btcpayserver/btcpayserver-docker.git $RepositoryPath
    if ($LASTEXITCODE -ne 0) { throw "Falha ao clonar btcpayserver-docker." }
}

$hostsPath = Join-Path $env:SystemRoot "System32\drivers\etc\hosts"
$hostPattern = "(^|\s)$([regex]::Escape($env:BTCPAY_HOST))(\s|$)"
if (-not (Select-String -LiteralPath $hostsPath -Pattern $hostPattern -Quiet)) {
    Assert-Administrator
    Add-Content -LiteralPath $hostsPath -Value "`r`n127.0.0.1`t$($env:BTCPAY_HOST)"
}

Push-Location $RepositoryPath
try {
    $BTCPAYGEN_CRYPTO1 = $env:BTCPAYGEN_CRYPTO1
    $BTCPAYGEN_REVERSEPROXY = $env:BTCPAYGEN_REVERSEPROXY
    $BTCPAYGEN_LIGHTNING = $env:BTCPAYGEN_LIGHTNING
    $BTCPAYGEN_ADDITIONAL_FRAGMENTS = $env:BTCPAYGEN_ADDITIONAL_FRAGMENTS
    $BTCPAYGEN_SUBNAME = $env:BTCPAYGEN_SUBNAME
    & .\build.ps1
    if ($LASTEXITCODE -ne 0) { throw "Falha ao gerar o Docker Compose do BTCPay." }
    $composeFile = Join-Path $RepositoryPath "Generated\docker-compose.$($env:BTCPAYGEN_SUBNAME).yml"
    if (-not (Test-Path -LiteralPath $composeFile)) { throw "Compose nao gerado: $composeFile" }
    docker compose --env-file $ConfigPath -f $composeFile config --quiet
    if ($LASTEXITCODE -ne 0) { throw "Docker Compose invalido." }
    docker compose --env-file $ConfigPath -f $composeFile up --remove-orphans -d
    if ($LASTEXITCODE -ne 0) { throw "Falha ao iniciar os containers." }
}
finally {
    Pop-Location
}

Write-Host "BTCPay iniciado em http://$($env:BTCPAY_HOST)" -ForegroundColor Green
Write-Host "Aguarde a sincronizacao antes de receber pagamentos reais."
