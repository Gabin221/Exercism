Function Invoke-Darts() {
    [CmdletBinding()]
    Param(
        [Double]$X,
        [Double]$Y
    )
    
    $Distance = [Math]::Sqrt([Math]::Pow($X,2) + [Math]::Pow($Y,2))

    if ($Distance -le 1) {
        return 10
    } elseif ($Distance -le 5) {
        return 5
    } elseif ($Distance -le 10) {
        return 1
    } else {
        return 0
    }
}
