$ErrorActionPreference = 'Stop'
$tools = 'C:\apps\protect-tool\app-tools\android-sdk\build-tools\35.0.0'
Write-Output '=== tools dir ==='
Test-Path -LiteralPath $tools
Get-ChildItem -LiteralPath $tools -Filter 'zipalign*' | Select-Object Name, Length
Get-ChildItem -LiteralPath $tools -Filter 'apksigner*' | Select-Object Name, Length
Write-Output '=== config snippet ==='
Select-String -Path 'C:\apps\protect-tool\config.py' -Pattern 'ZIPALIGN|APKSIGNER|_tool_path' | ForEach-Object { $_.Line.Trim() }
Write-Output '=== python resolve ==='
Set-Location C:\apps\protect-tool
$env:PYTHONPATH = 'C:\apps\protect-tool'
& .\.venv\Scripts\python.exe -c "import os; from config import Config; print(Config.ZIPALIGN); print(os.path.isfile(Config.ZIPALIGN)); print(Config.APKSIGNER); print(os.path.isfile(Config.APKSIGNER))"
