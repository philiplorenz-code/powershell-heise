$computername = $env:COMPUTERNAME
# Abfrage der Disk-Informationen
$Disks = Get-WmiObject Win32_LogicalDisk -ComputerName $computername  | Select-Object DeviceID, Size,FreeSpace
$Disk = $Disks[1]
# Loopen über die angegebenen Computer
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

    $DiskUsedSpaceGiB = $DiskSpaceGiB - $DiskFreeSpaceGiB







    $FilePath = "$Env:USERPROFILE\Desktop\$computername.docx"

    $WordDocument = New-WordDocument $FilePath
    Add-WordText -WordDocument $WordDocument -Text "Laufwerk $DiskName auf $Computername" `
        -FontSize 15 `
        -Color Black `
        -Bold $true -HeadingType Heading1

    Add-WordPieChart -WordDocument $WordDocument -ChartName 'Speicherbelegung' -Names 'Belegt', 'Frei' -Values $DiskUsedSpaceGiB, $DiskFreeSpaceGiB -ChartLegendPosition Bottom -ChartLegendOverlay $false

    Save-WordDocument $WordDocument -Language 'de-DE'

    ### Start Word with file
    Invoke-Item $FilePath




