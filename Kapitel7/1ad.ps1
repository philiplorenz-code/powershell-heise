# Installation der RSAT-Tools
Add-WindowsFeature RSAT-AD-PowerShell

# Import des AD-Modules
Import-Module ActiveDirectory

# Anzeigen der Anzahl der CMDlets aus dem AD-Modul
(Get-Command -Module ActiveDirectory).count

