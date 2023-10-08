# Current User  Console PowerShell profile
Set-Location -Path $env:USERPROFILE\Documents\WindowsPowerShell


# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
