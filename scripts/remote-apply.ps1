[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [string]$Target,

    [Parameter(Mandatory = $true)]
    [string]$ArchiveName
)

$ErrorActionPreference = 'Stop'
$ProgressPreference = 'SilentlyContinue'

function Invoke-Step([string]$Name, [scriptblock]$Action) {
    Write-Output ("[deploy] " + $Name + "...")
    $global:LASTEXITCODE = 0
    & $Action
    $code = if ($null -eq $LASTEXITCODE) { 0 } else { [int]$LASTEXITCODE }
    if ($code -ne 0) {
        Write-Output ("[deploy] FALHA em '" + $Name + "' (exit=" + $code + ")")
        throw ("Falha em '" + $Name + "' (exit=" + $code + ")")
    }
    Write-Output ("[deploy] OK: " + $Name)
}

try {
    $archive = Join-Path $env:USERPROFILE $ArchiveName
    if (-not (Test-Path -LiteralPath $archive -PathType Leaf)) {
        throw "Arquivo zip nao encontrado: $archive"
    }

    New-Item -ItemType Directory -Force -Path $Target | Out-Null
    Expand-Archive -LiteralPath $archive -DestinationPath $Target -Force
    Remove-Item -LiteralPath $archive -Force
    Write-Output '[deploy] codigo extraido.'

    $envFile = Join-Path $Target '.env'
    if (-not (Test-Path -LiteralPath $envFile -PathType Leaf)) {
        throw "Arquivo .env nao encontrado em $Target."
    }

    $venvPython = Join-Path $Target '.venv\Scripts\python.exe'
    if (-not (Test-Path -LiteralPath $venvPython -PathType Leaf)) {
        $systemPython = (Get-Command python -ErrorAction Stop).Source
        Invoke-Step 'criar venv' {
            & $systemPython -m venv (Join-Path $Target '.venv')
        }
    }

    Push-Location $Target
    try {
        Invoke-Step 'pip install requirements' {
            & $venvPython -m pip install --disable-pip-version-check -r requirements.txt
        }
        Invoke-Step 'pip install waitress' {
            & $venvPython -m pip install --disable-pip-version-check waitress
        }

        $taskName = 'KatanaProtectTool'
        if (Get-ScheduledTask -TaskName $taskName -ErrorAction SilentlyContinue) {
            Stop-ScheduledTask -TaskName $taskName -ErrorAction SilentlyContinue
            Start-Sleep -Seconds 2
        }

        Invoke-Step 'install-windows-task' {
            & powershell -NoProfile -ExecutionPolicy Bypass -File scripts\install-windows-task.ps1
        }
        Start-ScheduledTask -TaskName $taskName
        Write-Output '[deploy] tarefa iniciada.'

        $healthy = $false
        for ($attempt = 1; $attempt -le 30; $attempt++) {
            Start-Sleep -Seconds 1
            try {
                $response = Invoke-WebRequest -Uri 'http://127.0.0.1:5000/bypass' -UseBasicParsing -TimeoutSec 5
                if ($response.StatusCode -eq 200) {
                    $healthy = $true
                    break
                }
            }
            catch {
                Write-Output ("Aguardando (" + $attempt + "/30)...")
            }
        }
        if (-not $healthy) {
            throw 'App nao respondeu em /bypass.'
        }
    }
    finally {
        Pop-Location
    }

    Write-Output ('Deploy OK em ' + $Target)
}
catch {
    Write-Output ('[deploy] ERRO: ' + $_.Exception.Message)
    throw
}
