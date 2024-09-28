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

    if ($Colors.length -eq 2) {
        if ($Colors[0] -eq $ListColors[0]) {
            $Code = Get-ColorCode -Color $Colors[1]
    
            return $Code
        } else {
            $Code = Get-ColorCode -Color $Colors[0]
            $Code += Get-ColorCode -Color $Colors[1]
    
            return $Code
        }
    } else {
        if ($Colors[0] -eq $ListColors[0]) {
            $Code = Get-ColorCode -Color $Colors[1]
            $Code += Get-ColorCode -Color $Colors[2]
    
            return $Code
        } else {
            $Code = Get-ColorCode -Color $Colors[0]
            $Code += Get-ColorCode -Color $Colors[1]
            $Code += Get-ColorCode -Color $Colors[2]
    
            return $Code
        }
    }
}

Function Get-Tolerance {
    param(
        [string]$Color
    )
    
    switch ($Color) {
        "grey"   { return "±0.05%" }
        "violet" { return "±0.1%" }
        "blue"   { return "±0.25%" }
        "green"  { return "±0.5%" }
        "brown"  { return "±1%" }
        "red"    { return "±2%" }
        "gold"   { return "±5%" }
        "silver" { return "±10%" }
        default  { return "" }
    }
}

Function Get-Multiplier {
    param(
        [string]$Color
    )
    
    switch ($Color) {
        "black"  { return 1 }
        "brown"  { return 10 }
        "red"    { return 100 }
        "orange" { return 1000 }
        "yellow" { return 10000 }
        "green"  { return 100000 }
        "blue"   { return 1000000 }
        "violet" { return 10000000 }
        "grey"   { return 100000000 }
        "white"  { return 1000000000 }
        "gold"   { return 0.1 }
        "silver" { return 0.01 }
        default  { throw "Invalid color" }
    }
}

Function Get-ResistorLabel {
    param(
        [string[]]$Colors
    )
    
    $value = ""
    $multiplier = 1
    $tolerance = ""
    
    switch ($Colors.Length) {
        1 {
            if ($Colors[0] -eq "black") {
                return "0 ohms"
            } else {
                throw "Invalid single-band resistor"
            }
        }
        4 {
            # Récupérer les deux premières bandes et le multiplicateur
            $value = "{0}{1}" -f (Get-ColorCode -Color $Colors[0]), (Get-ColorCode -Color $Colors[1])
            $multiplier = Get-Multiplier -Color $Colors[2]
            $tolerance = Get-Tolerance -Color $Colors[3]
        }
        5 {
            # Récupérer les trois premières bandes et le multiplicateur
            $value = "{0}{1}{2}" -f (Get-ColorCode -Color $Colors[0]), (Get-ColorCode -Color $Colors[1]), (Get-ColorCode -Color $Colors[2])
            $multiplier = Get-Multiplier -Color $Colors[3]
            $tolerance = Get-Tolerance -Color $Colors[4]
        }
        default {
            throw "Invalid number of bands"
        }
    }
    
    # Calcul de la valeur finale
    $finalValue = [math]::round([double]$value * $multiplier, 2)
    
    # Gérer les unités (ohms, kiloohms, megaohms)
    if ($finalValue -ge 1000000) {
        $finalValue = [math]::round($finalValue / 1000000, 2)
        $unit = " megaohms"
    } elseif ($finalValue -ge 1000) {
        $finalValue = [math]::round($finalValue / 1000, 2)
        $unit = " kiloohms"
    } else {
        $unit = " ohms"
    }

    # Retourner le résultat avec la tolérance
    return "$finalValue$unit $tolerance"
}
