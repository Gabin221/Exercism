Function Get-ReverseString {
    [CmdletBinding()]
    Param(
        [Parameter(Position=1, ValueFromPipeline=$true)]
        [string]$Forward
	)
	
	$Result = ""

    for ($i = $Forward.Length; $i -ge 0; $i--) {
        $Result += $Forward[$i]
    }

    return $Result
}
