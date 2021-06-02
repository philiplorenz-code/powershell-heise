# 1: Schreibe ein Script, welches einen Ordner erstellt, dann in diesen Ordner wechselt und dort ein File erzeugt. 
#    Gebe dir danach aus in welchem Verzeichnis du dich befindest, und ob das File dort liegt.

New-Item -ItemType Directory -Name "Ordner"
Set-Location -Path ".\Ordner"
New-Item -ItemType File -Name "Datei.txt"
Get-Location
Test-Path ".\Datei.txt"

if (Test-Path ".\Datei.txt"){
    Write-Host "Die Datei existiert!"
}


# 2: Lösche den Ordner und das File wieder
Remove-Item -Path ".\Datei.txt"
cd..
Remove-Item -Path ".\Ordner"



