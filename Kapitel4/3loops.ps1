# For-Schleife
$array = "Test1", "Test2", "Test3", "Test4"
for ($i = 0; $i -lt $array.Count; $i++) {
    
    Write-Host $array[$i]


}

# While Schleife
Restart-Computer -ComputerName adserver01 -Force 
Start-Sleep -Seconds 10
do {
    Start-Sleep -Seconds 2
    Write-Host "Host Rebooting.."
} until (Test-Connection -ComputerName adserver01 -Count 1 -Quiet)

# Until Schleife
Restart-Computer -ComputerName adserver01 -Force 
Start-Sleep -Seconds 10
do {
    Start-Sleep -Seconds 2
    Write-Host "Host Rebooting.."
} while (!(Test-Connection -ComputerName adserver01 -Count 1 -Quiet))


# ForEach Schleife
$array = "Test1", "Test2", "Test3", "Test4"

# For-Schleife (dient zum Vergleich)
for ($i = 0; $i -lt $array.Count; $i++) {
    $array[$i]
}

# ForEach:
foreach ($one in $array){
    Write-Host $one
}