slmgr.vbs /ipk "Insert MAK licence key here"

slmgr /ato

Powershell.exe
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Unrestricted -Force
Install-Script -Name Get-WindowsAutopilotInfo -Force
Get-WindowsAutopilotInfo.ps1 -Online -AddToGroup "Autopilot Group" -Assign
shutdown /r -t 0
