Function Invoke-RnaTranscription() {
    [CmdletBinding()]
    Param(
        [string]$Strand
    )
    
    $Result = ""

    for ($i = 0; $i -lt $Strand.Length; $i++) {
        switch ($Strand[$i]) {
            "A" { 
                $Result += "U"
            }
            "T" { 
                $Result += "A"
            }
            "C" { 
                $Result += "G"
            }
            "G" { 
                $Result += "C"
            }
        }
    }

    return $Result
}
