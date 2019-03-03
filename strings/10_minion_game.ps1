Describe 'Tests' {
  It 'Passes Tests' {
    ("BANANA" | python "$PSScriptRoot\10_minion_game.py")  | Should -BeExactly "Stuart 12"
    ("ANANA" | python "$PSScriptRoot\10_minion_game.py")  | Should -BeExactly "Kevin 9"
    ("ANNAN" | python "$PSScriptRoot\10_minion_game.py")  | Should -BeExactly "Stuart 8"
    ("BAA" | python "$PSScriptRoot\10_minion_game.py")  | Should -BeExactly "Draw"
  }
}