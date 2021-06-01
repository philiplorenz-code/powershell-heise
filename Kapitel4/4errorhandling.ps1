# Konsole im Dateisystem auf Directory "Test" platzieren
Set-Location .\Test
# Neue TXT-Datei erstellen
New-Item -ItemType File "test.txt"

# Ausgabe der Fehleranzahl
$Error.Count

# Mögliche ErrorActionPreferences (EAP) ("wie soll die Powershell mit Fehlern umgehen?")
$ErrorActionPreference = "Continue"
$ErrorActionPreference = "SilentlyContinue"
$ErrorActionPreference = "Inquire"
$ErrorActionPreference = "Stop"

Set-Location C:\Users\Administrator\PowerShell\
# PowerShell versucht den Code in Try auszuführen - Bei einem Fehler, wird dieser je nach EAP nicht ausgegeben und führt in keinem Fall zum Programmabbruch
try {
    Set-Location .\Test 
}
# Falls der Code aus Try aufgrund eines Fehlers nicht ausgeführt werden kann, wird der Code im Catch-Block ausgeführt
catch {
    # Löschen aller Fehler aus der Fehler-Variable
    $Error.Clear()
    New-Item -ItemType Directory -Path "Test"
    Set-Location .\Test
}
# Finally wird IMMER ausgeführt
finally {
    Write-Host "Du bist jetzt im Verzeichnis Test!"
}
