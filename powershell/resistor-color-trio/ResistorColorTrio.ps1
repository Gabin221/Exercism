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

    if ($Colors[0] -eq $ListColors[0]) {
        $Code = Get-ColorCode -Color $Colors[1]

        return $Code
    } else {
        $Code = Get-ColorCode -Color $Colors[0]
        $Code += Get-ColorCode -Color $Colors[1]

        return $Code
    }
}


Function Get-ResistorLabel() {
    [CmdletBinding()]
    Param(
        [string[]]$Colors
    )

    $Code = Get-ColorCodeValue @($Colors[0], $Colors[1])
    $NumberZeros = Get-ColorCode -Color $Colors[2]
    $OrderPower = 0
    $Triplet = "000"

    $Result = $Code

    for ($i = 0; $i -lt $NumberZeros; $i++) {
        $Result += "0"
    }

    while ($Result.IndexOf($Triplet) -ge 0 ) {
        $OrderPower++
        $Result = $Result.Remove($Result.IndexOf($Triplet), $Triplet.Length)
    }

    switch ($OrderPower) {
        0 { 
            $Result += " ohms"
        }
        1 { 
            $Result += " kiloohms"
        }
        2 { 
            $Result += " megaohms"
        }
        3 { 
            $Result += " gigaohms"
        }
    }

    return $Result
}

Get-ResistorLabel -Colors @("orange", "orange", "black")
Get-ResistorLabel -Colors @("blue", "grey", "brown")
Get-ResistorLabel -Colors @("red", "black", "red")
Get-ResistorLabel -Colors @("green", "brown", "orange")
Get-ResistorLabel -Colors @("yellow", "violet", "yellow")
Get-ResistorLabel -Colors @("blue", "violet", "blue")
Get-ResistorLabel -Colors @("black", "black", "black")
Get-ResistorLabel -Colors @("white", "white", "white")
Get-ResistorLabel -Colors @("black", "grey", "black")
Get-ResistorLabel -Colors @("blue", "green", "yellow", "orange")
