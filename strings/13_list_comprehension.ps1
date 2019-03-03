Describe 'Tests' {
  It 'Passes Tests' {
    $result = ("2`n2`n2`n2" | python "$PSScriptRoot\13_list_comprehension.py")
    $result | Should -BeExactly "[[0, 0, 0], [0, 0, 1], [0, 1, 0], [0, 1, 2], [0, 2, 1], [0, 2, 2], [1, 0, 0], [1, 0, 2], [1, 1, 1], [1, 1, 2], [1, 2, 0], [1, 2, 1], [1, 2, 2], [2, 0, 1], [2, 0, 2], [2, 1, 0], [2, 1, 1], [2, 1, 2], [2, 2, 0], [2, 2, 1], [2, 2, 2]]"
    $result = ("1`n1`n1`n2" | python "$PSScriptRoot\13_list_comprehension.py")
    $result | Should -BeExactly "[[0, 0, 0], [0, 0, 1], [0, 1, 0], [1, 0, 0], [1, 1, 1]]"
  }
}