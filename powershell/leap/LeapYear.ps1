function Test-LeapYear {
    param( [int]$year )

    if ($year % 4 -eq 0 -and $year % 100 -ne 0 -or $year % 400 -eq 0) {
        return $true
    } else {
        return $false
    }
}

Test-LeapYear(2015)
Test-LeapYear(1970)
Test-LeapYear(1996)
Test-LeapYear(1960)
Test-LeapYear(2100)
Test-LeapYear(1900)
Test-LeapYear(2000)
Test-LeapYear(2400)
Test-LeapYear(1800)
