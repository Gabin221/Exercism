function Get-HammingDifference([string]$strand1, [string]$strand2) {
    
    if ($strand1.Length -ne $strand2.Length) {
        Throw "*strands must be of equal length.*"
    } else {
        $hammingDistance = 0
        for ($i = 0; $i -lt $strand1.Length; $i++) {
            if ($strand1[$i] -ne $strand2[$i]) {
                $hammingDistance++
            }
        }

        return $hammingDistance
    }
}
