Function Get-TwoFer(){
    [CmdletBinding()]
    Param(
        [string]$Name
    )

    if ($Name -eq "") {
        return "One for you, one for me"
    } else {
        return "One for " + $Name + ", one for me"
    }
}
