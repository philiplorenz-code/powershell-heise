# Alle AD-Computer ausgeben, welche vor dem aktuellen Datum - 10 angelegt wurden
Get-ADComputer -Filter * -Properties * | Where-Object {$_.whenCreated -lt ((get-date).AddDays(-10))}