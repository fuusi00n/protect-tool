$ErrorActionPreference = 'Stop'
$root = 'C:\apps\protect-tool'
$files = @(
  'config.py',
  'services\apk.py',
  'services\upload_validation.py',
  'static\js\subscriber.js',
  'static\js\katana.js',
  'templates\partials\make_upload_fields.html',
  'templates\subscriber\make.html',
  'signing\testkey.pk8',
  'signing\testkey.x509.pem'
)
foreach ($f in $files) {
  $p = Join-Path $root $f
  if (Test-Path -LiteralPath $p) {
    $item = Get-Item -LiteralPath $p
    $hash = (Get-FileHash -LiteralPath $p -Algorithm SHA256).Hash.Substring(0,12)
    Write-Output ("REMOTE {0} {1} {2}" -f $hash, $item.Length, $f)
  } else {
    Write-Output ("REMOTE MISSING {0}" -f $f)
  }
}
$zip = Join-Path $root 'app-tools\android-sdk\build-tools\35.0.0\zipalign.exe'
Write-Output ("ZIPALIGN={0}" -f (Test-Path -LiteralPath $zip))
$iconLabel = Select-String -Path (Join-Path $root 'templates\partials\make_upload_fields.html') -Pattern 'obrigat' -SimpleMatch -ErrorAction SilentlyContinue
Write-Output ("ICON_LABEL={0}" -f [bool]$iconLabel)
$sanitize = Select-String -Path (Join-Path $root 'services\apk.py') -Pattern 'sanitize_launcher_icon_conflicts' -SimpleMatch -ErrorAction SilentlyContinue
Write-Output ("SANITIZE={0}" -f [bool]$sanitize)
$req = Select-String -Path (Join-Path $root 'services\upload_validation.py') -Pattern 'Icone obrigatorio' -SimpleMatch -ErrorAction SilentlyContinue
Write-Output ("ICON_REQUIRED={0}" -f [bool]$req)
