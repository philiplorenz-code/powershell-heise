# Prozesse auslesen
Get-Process

# Items (Files&Ordner) eines Verzeichnisses auslesen
Get-ChildItem

# Services auslesen
Get-Service

# Text in der Konsole ausgeben
Write-Host "Das hier ein ein Text"

# Warnung auf der Konsole ausgeben
Write-Warning "Das hier ein ein Text"

# Fehler auf der Konsole ausgeben
Write-Error "Das hier ein ein Text"

# Verbindung zu einem bestimmten Host testen ("ping")
Test-Connection -ComputerName 8.8.8.8 

# Prüfen, ob ein Pfad auf dem FileSystem existiert
Test-Path -Path "C:\Users\Administrator\PowerShell\Folder2"

# Hilfe zu einem CMDlet ausgeben
Get-Help Set-ExecutionPolicy -Online

# ExecutionPolicy setzen
Set-ExecutionPolicy -Unrestricted








 











