# Wechsel auf Partition C (Laufwerke sind quasi auch "nur" PSDrives)
Set-Location C:

# Fragt alle Elemente des aktuellen Verzeichnisses rekursiv (Unterordner werden ebenfalls abgefragt) ab und speichert diese in einer Variable 
$AllFiles2 = Get-ChildItem -Recurse


$AllFiles   | Where-Object {$_.Extension -eq ".txt"} ` # Selektiert die Ausgabe nach einen gewissen Attribut (und einem ausgewählten Wert)
            | Select-Object * ` # Legt die anzuzeigenden Attribute fest (* steht dabei für alle Attribute)
            | Out-GridView # Möglichkeit sich das Ergebnis in einem grafischen Interface anzeigen zu lassen

