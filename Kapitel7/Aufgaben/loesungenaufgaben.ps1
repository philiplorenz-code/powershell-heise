# 1:  Erstelle ein Programm, welches alle Benutzer aus dem AD ausliest. Zu jedem Dieser User sollen alle Gruppen aufgelistet werden, in
#     welchen sich die jeweiligen User befinden. Wenn ein User Mitglied in über 5 Gruppen ist, soll eine Warnung ausgegeben werden.
#     Tipp: Die Gruppen-Mitgliedschaften eines Users kannst du mit dem CMDlet Get-ADPrincipalGroupMembership ermitteln

$AllADUsers = (Get-ADUser -Filter * | Select-Object SamAccountName).SamAccountName
foreach ($User in $AllADUsers){
    Write-Host "Username: $User" -ForegroundColor Green
    $ADGroups = Get-ADPrincipalGroupMembership $User
    foreach ($ADGroup in $ADGroups) {
        $SAN = $ADGroup.SamAccountName
        Write-Host "$SAN" -ForegroundColor Gray
    }
    if ($ADGroups.count -gt 5) {
        Write-Warning "Mitglied in mehr als 5 Gruppen!!"
    }
}
