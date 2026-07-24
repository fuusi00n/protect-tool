$ErrorActionPreference = 'Stop'
$res = 'C:\apps\protect-tool\dropper_rebuild\res'
Get-ChildItem -Path $res -Directory -Filter 'mipmap*' | ForEach-Object {
    foreach ($base in @('ic_launcher', 'ic_launcher_round')) {
        $xml = Join-Path $_.FullName ($base + '.xml')
        $png = Join-Path $_.FullName ($base + '.png')
        $webp = Join-Path $_.FullName ($base + '.webp')
        if ((Test-Path -LiteralPath $xml) -and ((Test-Path -LiteralPath $png) -or (Test-Path -LiteralPath $webp))) {
            Remove-Item -LiteralPath $xml -Force
            Write-Output ("removed conflict: " + $xml)
        }
    }
}
Write-Output 'template sanitized'
