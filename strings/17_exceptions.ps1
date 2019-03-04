Describe 'Tests' {
  It 'Passes Tests' {
    $result = ("3`n1 0`n2 $`n3 1" | python "$PSScriptRoot\17_exceptions.py")
    $result[0] | Should -BeExactly 'Error Code: division by zero'
    $result[1] | Should -BeExactly "Error Code: invalid literal for int() with base 10: '$'"
    $result[2] | Should -BeExactly '3'
  }
}