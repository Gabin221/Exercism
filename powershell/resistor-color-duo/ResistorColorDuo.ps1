Function Get-Colors() {

    $List = @("black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white")
    
    return $List
}

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

    return "" + $Compteur
}

Function Get-ColorCodeValue() {
    [CmdletBinding()]
    Param(
        [string[]]$Colors
    )
    
    $ListColors = Get-Colors
    $Code = Get-ColorCode -Color $Colors[0]
    $Code += Get-ColorCode -Color $Colors[1]

    if ($Colors[0] -eq $ListColors[0]) {
        return Get-ColorCode -Color $Colors[1]
    } else {
        $Code = Get-ColorCode -Color $Colors[0]
        $Code += Get-ColorCode -Color $Colors[1]

        return $Code
    }
}
