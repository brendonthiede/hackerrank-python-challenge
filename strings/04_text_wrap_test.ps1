Describe 'Tests' {
  It 'Passes Tests' {
    $result = ("ABCDEFGHIJKLIMNOQRSTUVWXYZ`n4" | python "$PSScriptRoot\04_text_wrap.py")
    $result[0] | Should -BeExactly 'ABCD'
    $result[1] | Should -BeExactly 'EFGH'
    $result[2] | Should -BeExactly 'IJKL'
    $result[3] | Should -BeExactly 'IMNO'
    $result[4] | Should -BeExactly 'QRST'
    $result[5] | Should -BeExactly 'UVWX'
    $result[6] | Should -BeExactly 'YZ'
  }
}