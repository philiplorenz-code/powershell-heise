# Auslesen der installierten Software
Get-CimInstance -class Win32_Product

# Auslesen der installierten Software und Anzeigen aller Attribute
Get-CimInstance -class Win32_Product | Select-Object *

# Deinstallieren der VLC-Playeres
Get-CimInstance -class Win32_Product | Where-Object {$_.Name -like "*VLC*"} | Invoke-CimMethod -MethodName Uninstall

# Update des VLC-MediaPlayers (Installation möglich, indem Methodname Update durch Install ersetzt wird)
Invoke-CimMethod -Class Win32_Product -MethodName Update -Arguments @{PackageLocation='C:\Users\Administrator\PowerShell\Kapitel6\installation\vlc-3.0.4-win64.msi'}