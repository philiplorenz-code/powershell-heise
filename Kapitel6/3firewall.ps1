Get-NetFirewallRule -Action Block -Direction Outbound

$Params = @{
    DisplayName     = "Block Port 80 for security reasons"
    Direction       = "Outbound"
    LocalPort       = "80"
    RemotePort      = "80"
    Protocol        = "TCP"
    Action          = "Block"
}

New-NetFirewallRule @Params
