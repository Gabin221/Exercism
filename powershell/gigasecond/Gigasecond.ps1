Function Add-Gigasecond() {
    [CmdletBinding()]
    Param(
        [DateTime]$Time
    )

    $Gigasecond = [TimeSpan]::FromSeconds(1000000000)

    $NewDate = $Time.Add($Gigasecond)

    return $NewDate
}
