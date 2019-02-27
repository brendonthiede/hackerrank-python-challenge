Describe 'Tests' {
  It 'Passes Tests' {
    $result = ("9 27" | python "$PSScriptRoot\05_designer_door_mat.py")
    $result[0] | Should -BeExactly '------------.|.------------'
    $result[1] | Should -BeExactly '---------.|..|..|.---------'
    $result[2] | Should -BeExactly '------.|..|..|..|..|.------'
    $result[3] | Should -BeExactly '---.|..|..|..|..|..|..|.---'
    $result[4] | Should -BeExactly '----------WELCOME----------'
    $result[5] | Should -BeExactly '---.|..|..|..|..|..|..|.---'
    $result[6] | Should -BeExactly '------.|..|..|..|..|.------'
    $result[7] | Should -BeExactly '---------.|..|..|.---------'
    $result[8] | Should -BeExactly '------------.|.------------'
  }
}