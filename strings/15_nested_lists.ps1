Describe 'Tests' {
  It 'Passes Tests' {

    ("5`nHarry`n37.21`nBerry`n37.21`nTina`n37.2`nAkriti`n41`nHarsh`n39" | python "$PSScriptRoot\15_nested_lists.py") | Should -BeExactly "5"
  }
}