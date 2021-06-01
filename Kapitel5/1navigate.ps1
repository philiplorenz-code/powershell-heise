# Aktuelles Verzeichnis (auf dem die PowerShell aktuell positioniert ist) anzeigen
Get-Location
pwd

# Verzeichnis wechseln
Set-Location -Path "C:\Users\Administrator\PowerShell\Kapitel5"
cd
cd..
cd/
cd D:

# Alle Elemente (Ordner und Dateien) eines Verzeichnisses ausgeben (Wenn Path-Parameter nicht angegeben ist, wird automatisch das aktuelle Verzeichnis verwendet)
Get-ChildItem
gci
ls
dir

Get-ChildItem -Path "C:\Users\Administrator\PowerShell\Kapitel4"

