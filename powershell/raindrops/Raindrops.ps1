Function Get-Raindrops() {
    [CmdletBinding()]
    Param(
        [int]$Rain
    )

    $String = ""

    if ($Rain % 3 -eq 0) {
        $String += "Pling"
    }
    if ($Rain % 5 -eq 0) {
        $String += "Plang"
    }
    if ($Rain % 7 -eq 0) {
        $String += "Plong"
    }
    if ($Rain % 3 -ne 0 -and $Rain % 5 -ne 0 -and $Rain % 7 -ne 0) {
        $String += $Rain
    }

    return $String
}
