Describe 'Tests' {
  It 'Passes Tests' {
    ("5`n2 3 6 6 5" | python "$PSScriptRoot\14_runner_up.py") | Should -BeExactly "5"
  }
}