# https://www.hackerrank.com/challenges/np-polynomials
Describe 'Tests' {
  It 'Passes Tests' {
    $sampleInput = "1.1 2 3`n0"
    $sampleOutputValue = "3.0"
    $sampleOutputValue = $sampleOutputValue.Split("`n")
    $result = ($sampleInput | python "$PSScriptRoot\09_np_polynomials.py")
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
