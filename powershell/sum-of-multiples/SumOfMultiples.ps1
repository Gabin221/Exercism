Function Get-SumOfMultiples {
    [CmdletBinding()]
    Param(
        [int[]]$Multiples,
        [int]$Limit
    )

    $MyMultiples = @()
    $Result = 0

    for ($i = 0; $i -lt $Multiples.Length; $i++) {
        $Iteration = 1
        $CurrentProduct = $Iteration * $Multiples[$i]

        while ($CurrentProduct -lt $Limit) {
            if (-not $MyMultiples.Contains($CurrentProduct)) {
                $MyMultiples += $CurrentProduct
                $Result += $CurrentProduct
            }
            $Iteration++
            $CurrentProduct = $Iteration * $Multiples[$i]
        }
    }

    return $Result
}
