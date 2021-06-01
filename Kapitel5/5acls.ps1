# Auslesen der Dateipfade aller Elemente im aktuellen Verzeichnis
$gci = (Get-ChildItem | Select-Object FullName).FullName

# Auslesen der ACL des ersten Files [0] aus der obigen Liste und anwenden dieser ACL auf das zweite Element [1]
Get-Acl $gci[0] | Set-Acl $gci[1]

# Speichern der ACL von der ersten Datei in einer Variablen
$acl = Get-Acl $gci[0]

# Erstellen einer neuen Accesrule
$AccessRule = New-Object System.Security.AccessControl.FileSystemAccessRule("server01\guest","FullControl","Allow")
# Hinzufügen der AccessRule zu der ACL in der Variable (wird nur in der Variable hinzugefügt, noch nicht auf Dateiebene)
$acl.SetAccessRule($AccessRule)

# Anwenden der ACL mit der neuen AccessRule auf die Datei (neue ACL wird nun im Dateisystem aktiv)
$acl | Set-Acl $gci[0]