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
$remoteArchiveName = "protect-tool-deploy-$([guid]::NewGuid().ToString('N')).zip"
$remoteTarget = "${UserName}@${HostName}"

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
        throw 'Falha no envio via SCP.'
    }

    $escapedPath = $RemotePath.Replace("'", "''")
    $escapedArchive = $remoteArchiveName.Replace("'", "''")
    $remoteScript = @"
`$ErrorActionPreference = 'Stop'
`$ProgressPreference = 'SilentlyContinue'
`$target = '$escapedPath'
`$archive = Join-Path `$env:USERPROFILE '$escapedArchive'

function Invoke-Step([string]`$Name, [scriptblock]`$Action) {
    Write-Output ("[deploy] " + `$Name + "...")
    `$global:LASTEXITCODE = 0
    & `$Action
    `$code = if (`$null -eq `$LASTEXITCODE) { 0 } else { [int]`$LASTEXITCODE }
    if (`$code -ne 0) {
        Write-Output ("[deploy] FALHA em '" + `$Name + "' (exit=" + `$code + ")")
        throw ("Falha em '" + `$Name + "' (exit=" + `$code + ")")
    }
    Write-Output ("[deploy] OK: " + `$Name)
}

try {
    New-Item -ItemType Directory -Force -Path `$target | Out-Null
    Expand-Archive -LiteralPath `$archive -DestinationPath `$target -Force
    Remove-Item -LiteralPath `$archive -Force

    `$envFile = Join-Path `$target '.env'
    if (-not (Test-Path -LiteralPath `$envFile -PathType Leaf)) {
        throw "Arquivo .env nao encontrado em `$target. Crie-o antes do deploy."
    }
    Write-Output '[deploy] .env remoto preservado.'

    `$venvPython = Join-Path `$target '.venv\Scripts\python.exe'
    if (-not (Test-Path -LiteralPath `$venvPython -PathType Leaf)) {
        `$systemPython = (Get-Command python -ErrorAction Stop).Source
        Invoke-Step 'criar venv' {
            & `$systemPython -m venv (Join-Path `$target '.venv')
        }
    }

    Push-Location `$target
    try {
        Invoke-Step 'pip install requirements' {
            & `$venvPython -m pip install --disable-pip-version-check -r requirements.txt
        }

        Invoke-Step 'pip install waitress' {
            & `$venvPython -m pip install --disable-pip-version-check waitress
        }

        `$compileTargets = @('app.py', 'routes', 'services') | Where-Object {
            Test-Path -LiteralPath `$PSItem
        }
        if (Test-Path -LiteralPath 'migrations') {
            `$compileTargets += 'migrations'
        }
        Invoke-Step 'compileall' {
            & `$venvPython -m compileall -q @compileTargets
        }

        if (Test-Path -LiteralPath 'migrations\run_migrations.py') {
            Invoke-Step 'migrations' {
                & `$venvPython migrations\run_migrations.py
            }
        } else {
            Write-Output '[deploy] migrations ausentes; pulando.'
        }

        if (Test-Path -LiteralPath 'init_bitcoin_db.py') {
            Invoke-Step 'init_bitcoin_db' {
                & `$venvPython init_bitcoin_db.py
            }
        }

        `$taskName = 'KatanaProtectTool'
        if (Get-ScheduledTask -TaskName `$taskName -ErrorAction SilentlyContinue) {
            Stop-ScheduledTask -TaskName `$taskName -ErrorAction SilentlyContinue
            Start-Sleep -Seconds 2
        }

        Invoke-Step 'install-windows-task' {
            & powershell -NoProfile -ExecutionPolicy Bypass -File scripts\install-windows-task.ps1
        }
        Start-ScheduledTask -TaskName `$taskName
        Write-Output '[deploy] tarefa iniciada.'

        `$healthy = `$false
        for (`$attempt = 1; `$attempt -le 30; `$attempt++) {
            Start-Sleep -Seconds 1
            try {
                `$response = Invoke-WebRequest -Uri 'http://127.0.0.1:5000/bypass' -UseBasicParsing -TimeoutSec 5
                if (`$response.StatusCode -eq 200) {
                    `$healthy = `$true
                    break
                }
            }
            catch {
                Write-Output ("Aguardando aplicacao iniciar (" + `$attempt + "/30)...")
            }
        }
        if (-not `$healthy) {
            throw 'A aplicacao nao respondeu em http://127.0.0.1:5000/bypass apos o reinicio.'
        }
    }
    finally {
        Pop-Location
    }

    Write-Output ('Deploy concluido e aplicacao validada em ' + `$target)
}
catch {
    Write-Output ('[deploy] ERRO: ' + `$_.Exception.Message)
    throw
}
"@

    $encodedRemoteScript = [Convert]::ToBase64String(
        [Text.Encoding]::Unicode.GetBytes($remoteScript)
    )
    & ssh @sshOptions -- $remoteTarget "powershell -NoProfile -NonInteractive -EncodedCommand $encodedRemoteScript"
    if ($LASTEXITCODE -ne 0) {
        throw 'O pacote foi enviado, mas a etapa remota falhou. Veja as linhas [deploy] acima.'
    }

    Write-Host 'Deploy concluido. O arquivo .env remoto foi preservado.' -ForegroundColor Green
}
finally {
    if (Test-Path -LiteralPath $temporaryRoot) {
        Remove-Item -LiteralPath $temporaryRoot -Recurse -Force
    }
}