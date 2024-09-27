Function Invoke-CollatzConjecture() {
    [CmdletBinding()]
    Param(
        [Int64]$Number
    )

    $Steps = 0

    if($Number -le 0) {
        throw "*error: Only positive numbers are allowed*"
    }

    While ($Number -ne 1) {
        if ($Number % 2 -eq 0) {
            $Number = $Number / 2
        } else {
            $Number = $Number * 3 + 1
        }
        $Steps++
    }

    return $Steps
}
