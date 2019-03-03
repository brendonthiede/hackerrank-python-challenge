Describe 'Tests' {
  It 'Passes Tests' {
    $result = (5 | python "$PSScriptRoot\12_triangle_quest.py")
    $result.Length | Should -BeExactly 4
    $result[0] | Should -BeExactly "1"
    $result[1] | Should -BeExactly "22"
    $result[2] | Should -BeExactly "333"
    $result[3] | Should -BeExactly "4444"
  }
}