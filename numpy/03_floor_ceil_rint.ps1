# https://www.hackerrank.com/challenges/floor-ceil-and-rint
Describe 'Tests' {
  It 'Passes Tests' {
    $result = ("1.1 2.2 3.3 4.4 5.5 6.6 7.7 8.8 9.9" | python "$PSScriptRoot\03_floor_ceil_rint.py")
    $result.Length | Should -Be 3
    $result[0] | Should -Be "[ 1.  2.  3.  4.  5.  6.  7.  8.  9.]"
    $result[1] | Should -Be "[  2.   3.   4.   5.   6.   7.   8.   9.  10.]"
    $result[2] | Should -Be "[  1.   2.   3.   4.   6.   7.   8.   9.  10.]"
  }
}