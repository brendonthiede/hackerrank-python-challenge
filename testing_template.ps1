# CHALLENGE_URL_PLACEHOLDER
Describe 'Tests' {
  It 'Passes Tests' {
    $sampleInput = "SAMPLE_INPUT_PLACEHOLDER"
    $sampleOutputValue = "SAMPLE_OUTPUT_PLACEHOLDER"
    $sampleOutputValue = $sampleOutputValue.Split("`n")
    $result = ($sampleInput | python "$PSScriptRoot\SCRIPT_NAME_PLACEHOLDER")
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
