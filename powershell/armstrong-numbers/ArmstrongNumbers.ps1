Function Invoke-ArmstrongNumbers() {
    [CmdletBinding()]
    Param(
        [Int64]$Number
    )

    $String  = "" + $Number
    $Test = 0

    for ($i = 0; $i -lt $String.Length; $i++) {
        $Test += [Math]::Pow([Int64]::Parse($String[$i]), $String.Length)
    }

    return $Test -eq $Number
}
