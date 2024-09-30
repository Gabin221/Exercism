Function Get-NucleotideCount() {
    [CmdletBinding()]
    Param(
        [string]$Strand
    )

    $Valide = $false
    $Compteurs = @{ 
        A = 0; 
        C = 0; 
        G = 0; 
        T = 0 
    }

    for ($i = 0; $i -lt $Strand.length; $i++) {
        if ($Strand[$i] -notlike "*A*" -and $Strand[$i] -notlike "*C*" -and $Strand[$i] -notlike "*G*" -and $Strand[$i] -notlike "*T*") {
            $Valide = $false
            break
        } else {
            $Valide = $true
        }
    }

    if ($Valide -eq $true) {
        for ($i = 0; $i -lt $Strand.length; $i++) {
            switch ($Strand[$i]) {
                'A' { 
                    $Compteurs.A += 1
                }
                'C' { 
                    $Compteurs.C += 1
                }
                'G' { 
                    $Compteurs.G += 1
                }
                'T' {
                    $Compteurs.T += 1
                }
            }
        }

        return $Compteurs
    } elseif ($Strand -eq "") {
        return $Compteurs
    } else {
        Throw "*Invalid nucleotide in strand*"
    }
}
