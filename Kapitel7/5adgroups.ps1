# Anzahl der AD-Gruppen ausgeben
(Get-ADGroup -Filter *).count 

# Alle Eigenschaften einer bestimmten AD-Gruppe ausgeben
Get-ADGroup Administrators -Properties *

# Für jeden Nutzer in einer AD-Gruppe den Datentyp ausgeben
foreach ($user in (Get-ADGroupMember Administrators)){
    $user.GetType() | Select-Object BaseType
}

# AD-User einer Gruppe hinzufügen
Add-ADGroupMember Administrators -Members ((Get-ADUser maxmustermann).SamAccountName)

# ... und wieder entfernen
Remove-ADGroupMember Administrators -Members ((Get-ADUser maxmustermann).SamAccountName) -Confirm:$false