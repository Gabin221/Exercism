function Get-Binary() {
    param (
        $Num
    )
    
    $bin = @{}
    $bit = 8
    while ($bit -ge 0) {
        $tmp = ($Num % 2)
        $bin[$bit] = $tmp
        $Num = [math]::truncate($Num / 2)
        $bit--
    }

    return $bin.Values
}

Function Invoke-SecretHandshake() {
    [CmdletBinding()]
    Param(
        [int]$Number
    )

    $Bin = Get-Binary -Num $Number
    $Sequences = @()

    for ($i = 0; $i -lt 4; $i++) {
        switch ($i) {
            0 { 
                if ($Bin[$i] -eq 1) {
                    $Sequences += "wink" 
                }
            }
            1 { 
                if ($Bin[$i] -eq 1) {
                    $Sequences += "double blink" 
                }
            }
            2 { 
                if ($Bin[$i] -eq 1) {
                    $Sequences += "close your eyes" 
                }
            }
            3 { 
                if ($Bin[$i] -eq 1) {
                    $Sequences += "jump" 
                }
            }
        }
    }

    if ($Bin[4] -eq 1) {
        $ReverseSequences = $Sequences[($Sequences.count-1)..0]
        return $ReverseSequences
    }

    return $Sequences
}
