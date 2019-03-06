# https://www.hackerrank.com/challenges/np-shape-reshape
Describe 'Tests' {
  It 'Passes Tests' {
    $sampleInput = "1 2 3 4 5 6 7 8 9"
    $sampleOutputValue = "[[1 2 3]`n [4 5 6]`n [7 8 9]]"
    $sampleOutputValue = $sampleOutputValue.Split("`n")
    $result = ($sampleInput | python "$PSScriptRoot\12_np_shape_reshape.py")
    if ($sampleOutputValue.Length -eq 1) {
      $result | Should -BeExactly $sampleOutputValue[0]
    } else {
      $result.Length | Should -Be $sampleOutputValue.Length
      for ($i = 0; $i -lt $sampleOutputValue.Length; $i++) {
        $result[$i] | Should -BeExactly $sampleOutputValue[$i]
      }
    }
  }
}
