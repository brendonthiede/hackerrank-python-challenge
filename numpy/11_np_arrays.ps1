# https://www.hackerrank.com/challenges/np-arrays
Describe 'Tests' {
  It 'Passes Tests' {
    $sampleInput = "1 2 3 4 -8 -10"
    $sampleOutputValue = "[-10.  -8.   4.   3.   2.   1.]"
    $sampleOutputValue = $sampleOutputValue.Split("`n")
    $result = ($sampleInput | python "$PSScriptRoot\11_np_arrays.py")
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
