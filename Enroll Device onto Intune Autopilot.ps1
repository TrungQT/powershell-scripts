slmgr.vbs /ipk RXBQY-V2NVH-MX6FH-TJW99-MG9R4
slmgr /ato

Powershell.exe
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Unrestricted -Force
Install-Script -Name Get-WindowsAutopilotInfo -Force
Get-WindowsAutopilotInfo.ps1 -Online -AddToGroup "Autopilot Group" -Assign
shutdown /r -t 0
