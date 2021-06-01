Install-Module -Name powershell-yaml
Import-Module powershell-yaml


$yaml = ConvertTo-Yaml @{
    "hello"="world"; 
    "anArray"=@(1,2,3); 
    "nested"=@{"array"=
        @("this", "is", "an", "array")
    }
}

$yaml2 = $yaml | ConvertFrom-Yaml