# Firewall-Regel auslesen
Get-NetFirewallRule -Action Block -Direction Outbound

# Neue Firewall-Regel erstellen
New-NetFirewallRule -DisplayName "Block outbound Port 80" -Direction Ou
