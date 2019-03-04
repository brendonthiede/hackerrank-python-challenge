Describe 'Tests' {
  It 'Passes Tests' {
    $result = ("2`n.*\+`n.*+" | python "$PSScriptRoot\18_incorrect_regex.py")
    $result.Length | Should -Be 2
    $result[0] | Should -BeExactly 'True'
    $result[1] | Should -BeExactly 'False'
  }
}
