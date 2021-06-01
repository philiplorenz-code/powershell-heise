# PSRemoting aktivieren
Enable-PSRemoting

# Username-Passwort-Kombination (PSCredential) in Variable speichern
$cred = Get-Credential

# Öffnen einer PowerShell-Session auf einem Remote-Computer
Enter-PSSession -ComputerName adserver01 -Credential $cred

# Serverliste iterieren mit Foreach
foreach ($server in $servers){
    # Code (steht im Scriptblock) auf einen anderen RemoteComputer schicken - der Code wird von dem RemoteComputer dann ausgeführt
    Invoke-Command -ComputerName $server -Credential $cred -ScriptBlock {
        New-Item -ItemType File -Path "C:\Users\Administrator\Desktop\test.txt"
    }
}
