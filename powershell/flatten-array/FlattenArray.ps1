Function Invoke-FlattenArray {
    [CmdletBinding()]
    Param(
        [System.Object[]]$Array
    )

    $List = @()
    
    foreach ($item in $Array) {
        if ($item -is [System.Object[]]) {
            $List += Invoke-FlattenArray -Array $item
        } elseif ($item -ne $null) {
            $List += $item
        }
    }

    return $List
}
