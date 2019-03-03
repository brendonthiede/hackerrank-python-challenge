Describe 'Tests' {
  It 'Passes Tests' {
    $result = ("AABCAAADA`n3" | python "$PSScriptRoot\11_merge_the_tools.py")
    $result[0] | Should -BeExactly "AB"
    $result[1] | Should -BeExactly "CA"
    $result[2] | Should -BeExactly "AD"
  }
}