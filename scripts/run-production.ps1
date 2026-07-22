$ErrorActionPreference = 'Stop'
$projectRoot = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$waitress = Join-Path $projectRoot '.venv\Scripts\waitress-serve.exe'
$logDirectory = Join-Path $projectRoot 'logs'
$logFile = Join-Path $logDirectory 'waitress.log'

if (-not (Test-Path -LiteralPath $waitress -PathType Leaf)) {
    throw "Waitress nao encontrado em $waitress"
}

New-Item -ItemType Directory -Force -Path $logDirectory | Out-Null
Set-Location $projectRoot

& $waitress --listen=0.0.0.0:5000 --call app:create_app *>> $logFile
exit $LASTEXITCODE