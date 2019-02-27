Describe 'Tests' {
  It 'Passes Tests' {
    $result = ('abc' | python "$PSScriptRoot\02_string_validators.py")
    $result[0] | Should -BeExactly 'True'
    $result[1] | Should -BeExactly 'True'
    $result[2] | Should -BeExactly 'False'
    $result[3] | Should -BeExactly 'True'
    $result[4] | Should -BeExactly 'False'
  }
}