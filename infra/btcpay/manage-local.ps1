[CmdletBinding()]
param(
    [ValidateSet("start", "stop", "restart", "status", "logs")]
    [string]$Action = "status",
    [string]$RepositoryPath,
    [string]$ConfigPath = (Join-Path $PSScriptRoot "local.env")
)

$ErrorActionPreference = "Stop"
if (-not $RepositoryPath) {
    $RepositoryPath = [IO.Path]::GetFullPath((Join-Path $PSScriptRoot "..\..\..\btcpayserver-docker"))
}
if (-not (Test-Path -LiteralPath $ConfigPath)) { throw "Configuracao ausente: $ConfigPath" }

$subname = "local"
foreach ($line in Get-Content -LiteralPath $ConfigPath) {
    if ($line -match '^BTCPAYGEN_SUBNAME=(.+)$') { $subname = $Matches[1].Trim() }
}
$composeFile = Join-Path $RepositoryPath "Generated\docker-compose.$subname.yml"
if (-not (Test-Path -LiteralPath $composeFile)) { throw "Execute setup-local.ps1 primeiro." }

$arguments = @("compose", "--env-file", $ConfigPath, "-f", $composeFile)
switch ($Action) {
    "start"   { $arguments += @("up", "--remove-orphans", "-d") }
    "stop"    { $arguments += @("down") }
    "restart" { $arguments += @("restart") }
    "status"  { $arguments += @("ps") }
    "logs"    { $arguments += @("logs", "--follow", "--tail", "200") }
}

& docker @arguments
if ($LASTEXITCODE -ne 0) { throw "Comando Docker falhou." }
