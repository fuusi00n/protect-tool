$ErrorActionPreference = 'Stop'
Select-String -Path 'C:\apps\protect-tool\services\apk.py' -Pattern '_resolve_sdk_tool' |
    Select-Object -First 5 |
    ForEach-Object { "{0}: {1}" -f $_.LineNumber, $_.Line.Trim() }

if (Test-Path 'C:\apps\protect-tool\apk.py') {
    Remove-Item 'C:\apps\protect-tool\apk.py' -Force
    Write-Output 'removed stray apk.py'
}

Set-Location 'C:\apps\protect-tool'
$env:PYTHONPATH = 'C:\apps\protect-tool'
$code = @'
import os
from config import Config
from services.apk import _resolve_sdk_tool
print('ZIPALIGN', Config.ZIPALIGN)
print('resolved', _resolve_sdk_tool(Config.ZIPALIGN))
print('exists', os.path.isfile(_resolve_sdk_tool(Config.ZIPALIGN)))
'@
$code | Set-Content -Path 'C:\apps\protect-tool\scripts\_tmp_check.py' -Encoding UTF8
& .\.venv\Scripts\python.exe 'C:\apps\protect-tool\scripts\_tmp_check.py'
Remove-Item 'C:\apps\protect-tool\scripts\_tmp_check.py' -Force
