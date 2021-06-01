# Standard-Variable, um sich die Verzeichnisse von Modulen ausgeben zu lessen
$env:PSModulePath

# PSGallery

function write-ToConsole(){
    [CMdletBinding()]
    param(
        [Parameter(Mandatory = $false)]
        [string] $output
    )
    
        write-host "$output"
    
    }
    
function write-ToConsoleTwice(){
[CMdletBinding()]
param(
    [Parameter(Mandatory = $false)]
    [string] $output
)

    write-host "$output"
    write-host "$output"

}
    
    