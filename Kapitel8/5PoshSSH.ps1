Install-Module Posh-SSH
Import-Module Posh-SSH

Get-Command -Module Posh-SSH

$session = New-SSHSession 192.168.179.37
Get-SSHSession

Invoke-SSHCommand -Index 0 -Command "pwd"
(Invoke-SSHCommand -Index 0 -Command "ip a").Output