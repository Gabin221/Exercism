Function Invoke-BinarySearch() {
    [CmdletBinding()]
    Param(
        [Int64[]]$Array,
        [Int64]$Value
    )

    $Compteur = 0

    for ($i = 0; $i -lt $Array.Length; $i++) {
        if ($Array[$i] -eq $Value) {
            return $Compteur
        } else {
            $Compteur++
        }
    }

    Throw "*error: value not in array*"
}
