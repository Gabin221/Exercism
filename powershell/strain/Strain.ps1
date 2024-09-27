Function Invoke-Keep() {
    [CmdletBinding()]
    Param(
        [Object[]]$Data,
        [ScriptBlock]$Predicate
    )

    return $Data | Where-Object {& $Predicate $_}
}

Function Invoke-Discard() {
    [CmdletBinding()]
    Param(
        [Object[]]$Data,
        [ScriptBlock]$Predicate
    )

    return $Data | Where-Object {-not (& $Predicate $_)}
}
