Function Invoke-Anagram() {
    [CmdletBinding()]
    Param(
        [string]$Subject,
        [string[]]$Candidates
    )

    # Convert the subject to lowercase, split into characters, sort and join back to form a sorted string
    $SortedSubject = -join ($Subject.ToLower().ToCharArray() | Sort-Object)

    $PossibleAnagram = @()

    foreach ($candidate in $Candidates) {
        # Skip candidates that are identical to the subject (ignoring case)
        if ($candidate.ToLower() -eq $Subject.ToLower()) {
            continue
        }

        # Sort the candidate in the same way and check if it matches the sorted subject
        $SortedCandidate = -join ($candidate.ToLower().ToCharArray() | Sort-Object)

        if ($SortedCandidate -eq $SortedSubject) {
            $PossibleAnagram += $candidate
        }
    }

    # Sort the results based on the order of occurrence in the Candidates list
    $OrderedAnagrams = @()
    foreach ($candidate in $Candidates) {
        if ($PossibleAnagram -contains $candidate) {
            $OrderedAnagrams += $candidate
        }
    }

    return $OrderedAnagrams
}

# Test avec les anagrammes multiples
Invoke-Anagram -Subject "allergy" -Candidates @("gallery", "ballerina", "regally", "clergy", "largely", "leading")
