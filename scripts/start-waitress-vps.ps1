$ErrorActionPreference = 'Continue'
Start-ScheduledTask -TaskName 'KatanaProtectTool'
Start-Sleep -Seconds 6
$task = Get-ScheduledTask -TaskName 'KatanaProtectTool'
Write-Output ('TASK_STATE=' + $task.State)
try {
    $r = Invoke-WebRequest -Uri 'http://127.0.0.1:5000/bypass' -UseBasicParsing -TimeoutSec 5
    Write-Output ('BYPASS=' + $r.StatusCode)
} catch {
    Write-Output ('BYPASS_ERR=' + $_.Exception.Message)
}
