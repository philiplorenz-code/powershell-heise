# Modul zur Installaition von Features
Import-Module ServerManager

# Web-Server Feature installieren (inkl. Unter-Features)
Install-WindowsFeature -Name Web-Server -IncludeAllSubFeature

# Windows-Feature auf einer Reihe von Computern installieren
foreach ($server in $servers){
    Install-WindowsFeature -Name Web-Server -ComputerName  -IncludeAllSubFeature
}