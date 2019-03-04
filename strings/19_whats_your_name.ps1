Describe 'Tests' {
  It 'Passes Tests' {
    $result = ("Ross`nTaylor" | python "$PSScriptRoot\19_whats_your_name.py")
    $result | Should -BeExactly 'Hello Ross Taylor! You just delved into python.'
  }
}
