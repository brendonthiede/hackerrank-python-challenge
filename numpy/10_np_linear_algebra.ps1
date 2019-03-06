# https://www.hackerrank.com/challenges/np-linear-algebra
Describe 'Tests' {
  It 'Passes Tests' {
    $sampleInput = "2`n1.1 1.1`n1.1 1.1"
    $sampleOutputValue = "0.0"
    $sampleOutputValue = $sampleOutputValue.Split("`n")
    $result = ($sampleInput | python "$PSScriptRoot\10_np_linear_algebra.py")
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
