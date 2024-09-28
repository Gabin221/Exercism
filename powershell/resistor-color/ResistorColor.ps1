Function Get-ColorCode() {
    [CmdletBinding()]
    Param(
        [string]$Color
    )

    $Colors = Get-Colors
    $Compteur = 0

    while ($Colors[$Compteur] -ne $Color) {
        $Compteur++
    }

    return $Compteur
}

Function Get-Colors() {

    $List = @("black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white")
    
    return $List
}
