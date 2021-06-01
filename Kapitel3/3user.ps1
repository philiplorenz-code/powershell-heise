# String: reiner Text (Zeichenkette)
[String]$VorName = "Mix"
[String]$NachName = "Mustermann"
[String]$Mail = $VorName + "." + $NachName + "@firma.de"

# Datetime: Datentyp, der Zeitstempel enthält
[datetime]$Geburtsdatum = "07.05.1985 17:22:11"

# Integer: Ganzzahl (also ohne Nachkommastelle! 2 ist ein Integer. 2.5 dagegen ist kein Integer!)
[Int32]$Alter = (((Get-Date) - $Geburtsdatum).Days) / 365
[Int32]$Eintritt = 2015
[Int32]$Austritt = 2020
[Int32]$Zugehoerigkeit = $Austritt - $Eintritt

# Boolean: Wahrheitswert. Kann $true oder $false sein (wenn es für einen Zustand zwei Möglichkeiten gibt (Schalten an oder aus..))
[bool]$Urlaub = $true

# Array: "Liste", die mehrere Werte aufnehmen kann 
[array]$taetigkeiten = "AD Administration", "Exchange Administration"

# Personaltabelle
# Konkettieren ("Addieren") von Strings
$Name = $VorName + " " + $NachName

# Hashtable: Key-Value Store
$PersonalTabelle = @{}
# Hinzufügen von Werten in den Hashtable über die Ad-Methode
$PersonalTabelle.Add("0001",$Name)
$PersonalTabelle.Add("0002","Max Mustermann")

# Aufrufen des Hashtable-Elements mit dem Schlüssel 0001
$PersonalTabelle."0001"

# Splatting
# Hashtables können auch genutzt werde, um Parameter optisch übersichtlicher darzustellen
$params = @{
    ComputerName    = "8.8.8.8"
    Count           = 1
    Quiet           = $true
}

Test-Connection @params



<# Array:
$taetigkeiten.count
$taetigkeiten[1] = "VMware Administration"
$taetigkeiten[-1]
(Get-Process).count
#>

<# Int-Actions:
$int1 = 4
$int2 = 5
$int3 = $int1 + $int2
$int3
#>

<# String-Actions:
$Mail
Write-Host "Vorname:"
$VorName
Write-Host "Nachname:"
$NachName
#>




