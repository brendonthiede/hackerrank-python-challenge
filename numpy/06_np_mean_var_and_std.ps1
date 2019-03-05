# https://www.hackerrank.com/challenges/np-mean-var-and-std
Describe 'Tests' {
  It 'Passes Tests' {
    $sampleInput = "2 2`n1 2`n3 4"
    $sampleOutputValue = "[ 1.5  3.5]`n[ 1.  1.]`n1.11803398875"
    $sampleOutputValue = $sampleOutputValue.Split("`n")
    $result = ($sampleInput | python "$PSScriptRoot\06_np_mean_var_and_std.py")
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
