# 1:  Installiere .NET Core 4.5 (Hinweis: das Feature heißt "NET-Framework-45-Core")
Install-WindowsFeature -Name NET-Framework-45-Core

# 2:  Erstelle eine neue Firewall-Regel, welche die ausgehenden Verbingungen eines Browser deiner Wahl blockiert.
#     Teste danach einen Websiten-Aufruf mit dem Browser und lösche die Regel anschließend wieder!
New-NetFirewallRule -Program “C:\Program Files (x86)\Mozilla Firefox\firefox.exe” -Action Block -DisplayName “Block Firefox browser” -Description “Block Firefox browser” -Direction Outbound
Remove-NetFirewallRule -DisplayName "Block Firefox browser"

# 3:  Lasse dir alle Events aus dem Log "System" ausgeben
Get-WinEvent -LogName 'System'









