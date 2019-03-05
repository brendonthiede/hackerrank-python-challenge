# https://www.hackerrank.com/challenges/np-eye-and-identity
Describe 'Tests' {
  It 'Passes Tests' {
    $result = ("3 3" | python "$PSScriptRoot\01_numpy_identity.py")
    $result.Length | Should -Be 3
    $result[0] | Should -Be "[[ 1.  0.  0.]"
    $result[1] | Should -Be " [ 0.  1.  0.]"
    $result[2] | Should -Be " [ 0.  0.  1.]]"
  }
}
