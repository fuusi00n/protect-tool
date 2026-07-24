$ErrorActionPreference = 'Stop'
$ProgressPreference = 'SilentlyContinue'

$dest = 'C:\apps\protect-tool\APP-TEST\tools\android-sdk\build-tools\35.0.0'
$zip = Join-Path $env:TEMP 'build-tools-35.zip'
$extract = Join-Path $env:TEMP 'bt35'
$url = 'https://dl.google.com/android/repository/build-tools_r35_windows.zip'

New-Item -ItemType Directory -Force -Path (Split-Path $dest) | Out-Null

Write-Output 'Downloading build-tools 35.0.0...'
Invoke-WebRequest -Uri $url -OutFile $zip -UseBasicParsing
Write-Output ("Downloaded {0} bytes" -f (Get-Item $zip).Length)

if (Test-Path -LiteralPath $dest) {
    Remove-Item -LiteralPath $dest -Recurse -Force
}
if (Test-Path -LiteralPath $extract) {
    Remove-Item -LiteralPath $extract -Recurse -Force
}

Expand-Archive -LiteralPath $zip -DestinationPath $extract -Force
$inner = Get-ChildItem -LiteralPath $extract -Directory | Select-Object -First 1
if (-not $inner) {
    throw 'Zip layout unexpected'
}

Move-Item -LiteralPath $inner.FullName -Destination $dest
Write-Output ("Installed to {0}" -f $dest)
Get-ChildItem -LiteralPath $dest | Select-Object -ExpandProperty Name
Write-Output ("zipalign.exe: {0}" -f (Test-Path (Join-Path $dest 'zipalign.exe')))
Write-Output ("apksigner.bat: {0}" -f (Test-Path (Join-Path $dest 'apksigner.bat')))
