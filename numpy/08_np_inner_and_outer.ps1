# https://www.hackerrank.com/challenges/np-inner-and-outer
Describe 'Tests' {
  It 'Passes Tests' {
    $sampleInput = "0 1`n2 3"
    $sampleOutputValue = "3`n[[0 0]`n [2 3]]"
    $sampleOutputValue = $sampleOutputValue.Split("`n")
    $result = ($sampleInput | python "$PSScriptRoot\08_np_inner_and_outer.py")
    if ($sampleOutputValue.GetType().Name -eq "String") {
      $result | Should -BeExactly $sampleOutputValue[0]
    } else {
      $result.Length | Should -Be $sampleOutputValue.Length
      for ($i = 0; $i -lt $sampleOutputValue.Length; $i++) {
        $result[$i] | Should -BeExactly $sampleOutputValue[$i]
      }
    }
  }
}
