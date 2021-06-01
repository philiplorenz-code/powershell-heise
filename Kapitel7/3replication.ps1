# Condition: wenn Replikationsfehler größer als 0:
if ((Get-ADReplicationFailure -Target adserver01).count -gt 0){
    # Schreiben des Datums in eine Log-Datei
    [string]$date = Get-Date | Out-File -FilePath "C:\Users\Administrator\PowerShell\Kapitel7\replicationerror.log" -Append
    # Schreiben des Fehlers in das Log-File
    $error | Out-File -FilePath "C:\Users\Administrator\PowerShell\Kapitel7\replicationerror.log" -Append
}

# Erzeugen eines Schedules Tasks zur geplanten Ausführung eines PowerShell Scripts
$Action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-File C:\Users\Administrator\PowerShell\Kapitel7\3replication.ps1"
$Trigger = New-ScheduledTaskTrigger -Daily -At 8:20PM
$Principal = New-ScheduledTaskPrincipal "domain\Administrator"
$Task = New-ScheduledTask -Action $Action -Trigger $Trigger -Principal $Principal

Register-ScheduledTask ReplicationCheck -InputObject $Task

