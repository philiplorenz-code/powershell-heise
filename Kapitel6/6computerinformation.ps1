# Auslesen des OS
Get-ComputerInfo | Select-Object OsName

# Auslesen des Speichers
((Get-CimInstance -Class Win32_ComputerSystem | Select-Object TotalPhysicalMemory).TotalPhysicalMemory) / 

# Auslesen der HotFixes
(Get-CimInstance -Class Win32_QuickFixEngineering).HotFixID