# Neue OU anlegen
New-ADOrganizationalUnit -Name Controlling -Path "DC=domain,DC=forest"

# OU auslesen
Get-ADOrganizationalUnit -Identity "OU=Controlling,DC=domain,DC=forest"

# OU auslesen, ohne vollständige Identity zu kennen
Get-ADOrganizationalUnit -Filter * | Where-Object {$_.Name -like "*Con*"}

# Alle OUs auslesen
Get-ADOrganizationalUnit -Filter * -Properties *

# Attribut einer OU verändern
Set-ADOrganizationalUnit -Identity "OU=Controlling,DC=domain,DC=forest" -Replace @{Street="PowerShellStraße 12"}

# Neuen AD-User erstellen und direkt einer OU zuweisen
New-ADUser -Name "Kim Kubernetes" -SamAccountName "kimkubernetes" -Path "OU=Controlling,DC=domain,DC=forest"
Get-ADUser kimkubernetes

# OU entfernen
Remove-ADOrganizationalUnit -Identity "OU=Controlling,DC=domain,DC=forest"