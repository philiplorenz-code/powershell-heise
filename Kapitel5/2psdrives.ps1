# Gibt die verfügbaren PSDrives aus
Get-PSDrive

# Wechselt in ein PS-Drive
Set-Location Cert:

# Erstellt ein neues PSDrive
New-PSDrive -Name Desktop -PSProvider FileSystem -Root "C:\Users\Administrator\Desktop"