Describe 'Tests' {
  It 'Passes Tests' {
    ("3`nKrishna 67 68 69`nArjun 70 98 63`nMalika 52 56 60`nMalika" | python "$PSScriptRoot\16_find_the_percentage.py") | Should -BeExactly "56.00"
    ("2`nHarsh 25 26.5 28`nAnurag 26 28 30`nHarsh" | python "$PSScriptRoot\16_find_the_percentage.py") | Should -BeExactly "26.50"
  }
}