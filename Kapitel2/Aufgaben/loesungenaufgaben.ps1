# 1:  Lasse dir eine detaillierte Information zum Command „write-host“ ausgeben.
Get-Help Write-Host

# 2:  Finde über get-help heraus, welche Aliase für „get-childitem“ verwendet
#     werden können.
Get-Help Get-ChildItem # -> gci, dir

# 3:  Gebe den Text „Powershell ist toll“ aus.
Write-Host "PowerShell ist toll!"

# 4:  Teste die Connection zu deinem Router
Get-NetIPConfiguration # Router-IP herausfinden (Gateway = Router) -> PowerShell-Pendant zu ipconfig
Test-Connection -TargetName "Hier Router-Hostname oder IP des Routers eintragen"