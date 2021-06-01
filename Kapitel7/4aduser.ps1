# Anzahl der ADUser ausgeben
(Get-ADUser -Filter *).count

# Ausgeben eines AD-Users mit allen Eigenschaften
Get-ADUser TimTerraform -Properties *

# Telefonnummer eines AD-Users setzen
Set-ADUser TimTerraform -OfficePhone "123456"

# Neuen AD-User anlegen
New-ADUser -Name "Max Mustermann" -GivenName "Max" -Surname "Mustermann" -SamAccountName "maxmustermann" 

# AD-User ausgeben
Get-ADUser maxmustermann