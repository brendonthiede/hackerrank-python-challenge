Describe 'Tests' {
  It 'Passes Tests' {
    $result = ("abcdcdc`ncdc" | python "$PSScriptRoot\01_find_a_string.py")
    $result | Should -BeExactly '2'
  }
}