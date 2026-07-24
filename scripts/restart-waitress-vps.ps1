$ErrorActionPreference = 'Stop'

Write-Output 'Parando tarefa e processos na porta 5000...'
Stop-ScheduledTask -TaskName 'KatanaProtectTool' -ErrorAction SilentlyContinue
Start-Sleep -Seconds 1

Get-NetTCPConnection -LocalPort 5000 -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty OwningProcess -Unique |
    ForEach-Object {
        if ($_ -and $_ -ne 0) {
            Stop-Process -Id $_ -Force -ErrorAction SilentlyContinue
            Write-Output ("killed pid " + $_)
        }
    }

Get-CimInstance Win32_Process |
    Where-Object { $_.CommandLine -and $_.CommandLine -match 'waitress' } |
    ForEach-Object {
        Stop-Process -Id $_.ProcessId -Force -ErrorAction SilentlyContinue
        Write-Output ("killed waitress pid " + $_.ProcessId)
    }

Start-Sleep -Seconds 2
Start-ScheduledTask -TaskName 'KatanaProtectTool'
Write-Output 'Tarefa KatanaProtectTool iniciada.'

$healthy = $false
for ($i = 1; $i -le 30; $i++) {
    Start-Sleep -Seconds 1
    try {
        $r = Invoke-WebRequest -Uri 'http://127.0.0.1:5000/bypass' -UseBasicParsing -TimeoutSec 3
        if ($r.StatusCode -eq 200) {
            $healthy = $true
            break
        }
    } catch {}
}
if (-not $healthy) { throw 'App nao respondeu em /bypass' }
Write-Output 'Waitress OK - /bypass 200'
