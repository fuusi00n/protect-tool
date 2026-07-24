[CmdletBinding()]
param(
    [string]$RemotePath = 'C:\apps\protect-tool'
)

$ErrorActionPreference = 'Stop'
$deployScript = Join-Path $PSScriptRoot 'deploy-windows.ps1'

& $deployScript `
    -HostName 'katana' `
    -UserName 'Administrador' `
    -RemotePath $RemotePath

if ($LASTEXITCODE -ne 0) {
    exit $LASTEXITCODE
}