# Demo-Script zur Demonstration von Debugging


$var = 3
$var = 10

$ints = @()
$ints += 42
$ints += 4234
$ints += 4456
$ints += 4345
$ints += 423
$ints += 45

function test-debug() {
    $a = 10
    $b = 124
    $c = 126
}

foreach ($int in $ints){
    write-host $int
}

test-debug