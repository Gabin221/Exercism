Function Get-BobResponse() {

    [CmdletBinding()]
    Param(
        [string]$HeyBob
    )
    
    If ((IsSilence($HeyBob)))
    {
    return ("Fine. Be that way!")
    }

    If ((IsQuestion($HeyBob)) -and (IsUpperCase($HeyBob)) -and (HasLetter($HeyBob)))
    {
    return ("Calm down, I know what I'm doing!")
    }

    If (IsQuestion($HeyBob))
    {
    return ('Sure.')
    }

    If ((IsUpperCase($HeyBob)) -and (HasLetter($HeyBob)))
    {
    return('Whoa, chill out!')
    }

    return("Whatever.")
}

Function IsQuestion() {
    Param(
        [string]$Text
    )
    $Text=OnlyText($Text)
    If ($Text[$Text.Length - 1] -eq "?")
    {
    return ($true)
    }
}

Function IsUpperCase() {
    Param(
        [string]$Text
    )
    $Text=OnlyText($Text)
    If ($Text.ToUpper() -ceq $Text)
    {
    return($true)
    }
}
Function OnlyText() {
    Param(
        [string]$Text
    )
    return ($Text.Trim())
}

Function IsSilence() {
    Param(
        [string]$Text
    )
    If (OnlyText($Text) -ne "")
    {
    return ($false)
    }
    else 
    {
    return ($true)
    }
    
}

Function HasLetter() {
    Param(
        [string]$Text   
    )
    
    $Letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
        
    while ($val -ne $Text.Length) 
    {
        $val++
        
        if ($Letters.Contains($Text[$val -1 ])){
            return $true
        }
        
        
    }
    
    return $false
}