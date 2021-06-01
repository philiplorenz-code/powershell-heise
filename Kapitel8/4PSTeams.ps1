# On Host

# Zu Prüfende Computer
$TargetComputers = @()
$TargetComputers += "central"
# Freier Speicher (Prozent), ab welchem alarmiert werden soll
$Threshold = 90
# TeamsID - URL, welche vom Connector generiert wurde
$TeamsID = "https://stdntpartners.webhook.office.com/webhookb2/08739a50-ce33-45dc-92a6-adb05d3944cb@84c31ca0-ac3b-4eae-ad11-519d80233e6f/IncomingWebhook/77e79ca94b8b4f74b480b39f9444ee7e/ca94164e-7375-4083-99d3-1e8ccbb9c5b2"
# URL des Windows Admin Centers
$WACURL = "https://localhost:6516/"




# ModuleCheck: Installiert PSTeams, falls noch nicht vorhanden
try {
  Get-InstalledModule PSTeams
}
catch {
  Install-Module -Name PSTeams -Force
}
finally {
  Import-Module PSTeams
}


# Loppen über die angegebenen Computer
foreach ($TargetComputer in $TargetComputers){
    # Abfrage der Disk-Informationen
    $Disks = Get-WmiObject Win32_LogicalDisk -ComputerName $TargetComputer  | Select-Object DeviceID, Size,FreeSpace

    # Loopen über die angegebenen Computer
    foreach ($Disk in $Disks){
        # Ermittel des Laufwerksbuchstaben
        $DiskName = $Disk.DeviceID
        # Größe des Laufwerks in GibiByte
        [double]$DiskSpaceGiB = $Disk.Size / (1024 * 1024 * 1024) 
        $DiskSpaceGiB = [math]::Round($DiskSpaceGiB,2)
        # Freier Speicher in GibiByte
        [double]$DiskFreeSpaceGiB = $Disk.FreeSpace / (1024 * 1024 * 1024) 
        $DiskFreeSpaceGiB = [math]::Round($DiskFreeSpaceGiB,2)
        # Freie Speicher in Prozent mit zwei Nachkommastellen
        [double]$DiskFreePercentage = $DiskFreeSpaceGiB / $DiskSpaceGiB 
        $DiskFreePercentage = [math]::Round($DiskFreePercentage,4) * 100

        # Wenn freier Speicher (Prozent) den Threshold unterschreitet, wird ein Teams-Alert gesendet
        if ($DiskFreePercentage -lt $Threshold){
          $WACURLServer = $WACURL + "computerManagement/connections/computer/" + $TargetComputer + "/tools/storage/storage/volumes"

          # Erstellen der Card-Elemente
          $Button1 = New-TeamsButton -Name 'Open Client Storage Options' -Link $WACURLServer
          $Fact1 = New-TeamsFact -Name "Server" -Value "**$($TargetComputer)**"
          $Fact2 = New-TeamsFact -Name "Partition" -Value "**$($DiskName)**"
          $Fact3 = New-TeamsFact -Name "Space Total (GibiByte)" -Value "**$($DiskSpaceGiB)**"
          $Fact4 = New-TeamsFact -Name "Space Free (GibiByte)" -Value "**$($DiskFreeSpaceGiB)**"
          $Fact5 = New-TeamsFact -Name "Space Free (Percent)" -Value "**$($DiskFreePercentage)**"

          # Erstellen ein Section und Zuordnung der Card-Elemente
          $Section = New-TeamsSection `
              -Buttons $Button1 `
              -ActivityDetails $Fact1, $Fact2, $Fact3, $Fact4, $Fact5
            
          # Senden der Card
          Send-TeamsMessage `
              -URI $TeamsID `
              -MessageTitle "Alert: Drive $DiskName on $TargetComputer -> only $DiskFreePercentage % Left!" `
              -Color Red `
              -Sections $Section
        }
    }


}