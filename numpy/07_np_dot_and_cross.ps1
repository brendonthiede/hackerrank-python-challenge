# https://www.hackerrank.com/challenges/np-dot-and-cross
Describe 'Tests' {
  It 'Passes Tests' {
    $sampleInput = "2`n1 2`n3 4`n1 2`n3 4"
    $sampleOutputValue = "[[ 7 10]`n [15 22]]"
    $sampleOutputValue = $sampleOutputValue.Split("`n")
    $result = ($sampleInput | python "$PSScriptRoot\07_np_dot_and_cross.py")
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
