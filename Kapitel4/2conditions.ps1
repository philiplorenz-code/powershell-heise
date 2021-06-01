# Conditions sind Bedingungen, die deinem Code ermöglichen "Entscheidungen" zu treffen
# Der Code in den runden Klammern muss als Ergebnis immer $true oder $false erzeugen!!
# Wenn der Code aus den runden Klammern $true zurückgibt, wird der Code aus der geschweiften Klammer ausgeführt, andernfalls nicht!
$var = 3
if ($var -gt 3) {
    Write-Host "Die Variable ist groesser als 3!!"
}
# Wenn die Condition (runde Klammer) aus IF $false zurückgibt, wird die Condition aus ELSEIF geprüft
elseif ($var -eq 3) {
    Write-Host "Die Variable ist gleich 3!!"
}

# Wenn die oberen Conditions allesamt nicht ausgeführt werden, wird ELSE ausgeführt (ELSE mit Bedacht wählen, da es ja passieren kann, dass man vergisst einen Fall in den oberen Conditions abzudecken und in diesem Fall der Code aus ELSE garnicht ausgeführt werden soll)
else {
    Write-Host "Die Variable ist kleiner als 3!!"
}

# Weitere Vergleichsoperatoren:

# Zahlen
# -eq equals        gleich
# -le lower equal   kleiner gleich
# -ge greater equal größer gleich
# -lt lower than    kleiner als
# -gt greater than  größer als

# Text
# -eq   equals        gleich
# -like wie -> zum Beispiel ("Test" -like "*est") -> $true