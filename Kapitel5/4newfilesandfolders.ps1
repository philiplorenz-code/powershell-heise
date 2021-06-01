# Erstellt einen neuen Ordner
New-Item -ItemType Directory -Name "Dir"

# Löscht den Ordner
Remove-Item "Dir"

# Wechselt in das Verzeichnis "Dir"
Set-Location .\Dir

# Erstellt eine neue Text-Datei
New-Item -ItemType File "ichbineintext.txt"

# Fügt der Text-Datei einen neuen Inhalt hinzu
Set-Content -Path "ichbineintext.txt" -Value "TestValue124"

# Fügt der Textdatei einen neuen Inhalt unter dem alten Inhalt hinzu (fügt den Inhalt in einer neuen Zeile hinzu)
$string = "Ich bin ein neuer Textdhw!"
$string | Out-File -FilePath "ichbineintext.txt" -Append

# Auslesen und Sortieren der Prozesse mit anschließendem Export in eine CSV-Datei
Get-Process | Select-Object Name,Path,CPU `
            | Sort-Object CPU -Descending `
            | Export-Csv -Path "ProcCPUSorted.csv" -Delimiter "," -NoTypeInformation


# Importiert eine CSV-Datei in ein Array
$Import = Import-Csv -Path "C:\Users\Administrator\PowerShell\Dir\ProcCPUSorted.csv" -Delimiter ","
