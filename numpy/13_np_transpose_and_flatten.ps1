# https://www.hackerrank.com/challenges/np-transpose-and-flatten
Describe 'Tests' {
  It 'Passes Tests' {
    $sampleInput = "2 2`n1 2`n3 4"
    $sampleOutputValue = "[[1 3]`n [2 4]]`n[1 2 3 4]"
    $sampleOutputValue = $sampleOutputValue.Split("`n")
    $result = ($sampleInput | python "$PSScriptRoot\13_np_transpose_and_flatten.py")
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
