# https://www.hackerrank.com/challenges/np-array-mathematics
Describe 'Tests' {
  It 'Passes Tests' {
    $result = ("1 4`n1 2 3 4`n5 6 7 8" | python "$PSScriptRoot\02_array_math.py")
    $result.Length | Should -Be 6
    $result[0] | Should -Be "[[ 6  8 10 12]]"
    $result[1] | Should -Be "[[-4 -4 -4 -4]]"
    $result[2] | Should -Be "[[ 5 12 21 32]]"
    $result[3] | Should -Be "[[0 0 0 0]]"
    $result[4] | Should -Be "[[1 2 3 4]]"
    $result[5] | Should -Be "[[    1    64  2187 65536]]"
  }
}