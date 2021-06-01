# Gestriges Datum in Variable speichern
$yesterday = (get-date).AddDays(-1)

# Eventlog auslesen
(Get-EventLog -LogName Application | Where-Object {$_.EventID -eq 1033 -and $_.TimeGenerated -gt $yesterday}).count

# Eventlog auslesen (Get-WinEvent lässt dabei den Remote-Computer rechnen, sofern die Events eines RemoteComputers ausgelesen werden. Ist also zu empfehlen, wenn mehrere Server abgefragt werden, da schneller)
(Get-WinEvent -ListProvider Microsoft-Windows-Grouppolicy).Events | Format-Table Id, Description