#!/usr/bin/env powershell
# This is the Current User ISE PowerShell Profile
Set-Location -Path $env:USERPROFILE\Documents\WindowsPowerShell
Set-StrictMode
Start-Steroids
$env:ErrorActionPreference = Continue
Write-Verbose -Verbose -Message 'Please wait while PowerShell Updates all the help files!'
Write-Host 'This can take a long time, so wait for the cursor to return' -ForegroundColor DarkCyan
Update-Help -Force
Get-InstalledModule | Update-Module -Verbose
$env:ErrorActionPreference = Stop
Get-ComputerInfo
New-Alias -Name np -Value $env:windir\system32\notepad.exe
$PSVersionTable
# this line will add a new custom command without a keyboard Shortcut that gets information about DeviceGuard from WMI:
$psise.CurrentPowerShellTab.AddOnsMenu.Submenus.Add('Test-DeviceGuard', { Get-CimInstance -Namespace root/Microsoft/Windows/DeviceGuard -ClassName Win32_DeviceGuard }, $null )
# this line will add a new custom command with the keyboard shortcut ALT+T:
$psise.CurrentPowerShellTab.AddOnsMenu.Submenus.Add('Start Regedit', { & "$env:windir\regedit.exe" }, 'ALT+T')

# this line will add a new custom command without a keyboard shortcut:
$psise.CurrentPowerShellTab.AddOnsMenu.Submenus.Add('Get Script Path', { $psise.CurrentFile.FullPath }, $null)

# these lines will first add a submenu, then add commands to it:
$parent = $psise.CurrentPowerShellTab.AddOnsMenu.SubMenus.Add('My Tools', $null, $null)
$parent.Submenus.Add('Close All Editors', { $psise.CurrentPowerShellTab.Files.Clear() }, 'ALT+X' )

# all commands will be defined once you run this script
# to define commands permanently, place this code into your profile script
# the path to the profile script can be found in $profile. You may have to create the file and subfolder first.







