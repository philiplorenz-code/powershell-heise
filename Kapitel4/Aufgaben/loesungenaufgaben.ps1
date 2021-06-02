# 1:  Schreibe ein Script, welches die Anzahl der Dateien im aktuellen Verzeichnis 
#     ausliest und eine Warnmeldung ausgibt, wenn die Anzahl größer als 3 ist.

$Childitems = Get-ChildItem
$AnzahlChilditem = $Childitems.Count

if (if $AnzahlChilditem -gt 3){
    Write-Warning "Im aktuell ausgewählten Verzeichnis befinden sich mehr als 3 Items"
}

# 2:  Erstelle ein Array mit 10 Werten vom Typ Integer und gib diese anschließen mit einer
#         - For-Schleife
#         - Do-While-Schleife
#         - Do-Until-Schleife
#         - Foreach-Schleife
#     aus

$array = @()
$array += 13
$array += 1234
$array += 11
$array += 176
$array += 1678
$array += 1456
$array += 1234
$array += 17
$array += 12
$array += 121

# For
for ($i = 0; $i -lt $array.Count; $i++) {
    $array[$i]
}

# Do-Until
$i = 0
do {
    $array[$i] 
    $i++
} until ($i -eq $array.Count)

# Do-While
$i = 0
do {
    $array[$i] 
    $i++
} while ($i -lt $array.Count)

# Foreach
foreach ($one in $array){
    $one
}

    
# 3:  Schwierig und zum Knobeln: 
#     Schreibe in der PowerShell Code zur Abbildung des Bubble-Sort-Algorithmus

#     Bubble-Sort:
#     Ein Array soll sortiert werden! Zum Beispiel: 37164 -> 76431
#     Dazu wird das Array in einer Schleife durchlaufen, wobei der aktuelle Wert mit dem nächsten Wert im Array verglichen wird. Wenn 
#     das aktuelle Element kleiner als das darauffolgende Element ist, sollen die Werte getauscht werden. Alle Elemente des Array werden 
#     durchlaufen! Du darfst für die Lösungen eine Hilfsvariable nutzen.


#     Visualisierung: https://zephyrnet.com/wp-content/uploads/2020/05/bubble-sort-and-cocktail-shaker-sort-in-javascript.gif
#     Hinweis: in unserem Beispiel soll das Array in die andere Richtung sortiert werden, wie im Beispiel oben angegeben


# Beispiel mit Werten:    1,3,2
# Durchlauf 1:            3,1,2
# Durchlauf 2:            3,2,1


function bubble_sort($a){
    $n = $a.Length
    for($i = 1; $i -le ($n-1); $i++) {
        for($j = 0; $j -le ($n - $i - 1); $j++) {
            if($a[$j] -le $a[$j + 1]){
                $temp = $a[$j]
                $a[$j] = $a[$j + 1]
                $a[$j + 1] = $temp
            }
        }
    }
    return $a
}
    
    
$a = @(10,50,40,20,70,60,30)
$sorted = bubble_sort $a
Write-Host "Sorted Array:"
foreach($s in $sorted){
    $s
}



