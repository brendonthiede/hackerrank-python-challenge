Describe 'Tests' {
  It 'Passes Tests' {
    $result = (5 | python "$PSScriptRoot\07_alphabet_rangoli.py")
    $result[0] | Should -BeExactly '--------e--------'
    $result[1] | Should -BeExactly '------e-d-e------'
    $result[2] | Should -BeExactly '----e-d-c-d-e----'
    $result[3] | Should -BeExactly '--e-d-c-b-c-d-e--'
    $result[4] | Should -BeExactly 'e-d-c-b-a-b-c-d-e'
    $result[5] | Should -BeExactly '--e-d-c-b-c-d-e--'
    $result[6] | Should -BeExactly '----e-d-c-d-e----'
    $result[7] | Should -BeExactly '------e-d-e------'
    $result[8] | Should -BeExactly '--------e--------'
  }
}
