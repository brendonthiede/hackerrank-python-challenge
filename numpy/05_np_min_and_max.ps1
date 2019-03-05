# https://www.hackerrank.com/challenges/np-min-and-max
Describe 'Tests' {
  It 'Passes Tests' {
    $sampleInput = "4 2`n2 5`n3 7`n1 3`n4 0"
    $sampleOutputValue = "3"
    $sampleOutputValue = $sampleOutputValue.Split("`n")
    $result = ($sampleInput | python "$PSScriptRoot\05_np_min_and_max.py")
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
