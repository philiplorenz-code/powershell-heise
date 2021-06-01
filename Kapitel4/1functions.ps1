# Functionen werden genutzt, um Code nur einmalig zu schreiben und diesen immer wieder verwenden zu können. Sie bilden außerdem die Grundlage für Module (Kapitel 8)
function Test-QuietConnection {
    param (
        [String]$ip
    )

    $connection = Test-Connection -ComputerName $ip -Quiet -Count 1
    if ($connection){
        #Write-Host "Die IP $ip ist erreichbar!" -ForegroundColor Green
        return $true
    }
    else {
        #Write-Error "Die IP $ip ist nicht erreichbar!"
        return $false
    }
}

# Aufrufen der eigenen Funktion mit entsprechendem Parameter
Test-QuietConnection -ip 8.8.8.8