Function Invoke-Panagram {
    [CmdletBinding()]
    Param(
        [string]$Sentence
    )

    $Sentence = $Sentence.ToLower() -replace "[^a-z]", ""
    $Alphabet = "abcdefghijklmnopqrstuvwxyz"

    foreach ($letter in $Alphabet.ToCharArray()) {
        if (-not $Sentence.Contains($letter)) {
            return $false
        }
    }

    return $true
}
