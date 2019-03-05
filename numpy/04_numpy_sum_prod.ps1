# https://www.hackerrank.com/challenges/np-sum-and-prod
Describe 'Tests' {
  It 'Passes Tests' {
    $sampleInput = "2 2`n1 2`n3 4"
    $sampleOutputLength = 2
    $sampleOutputValue = "24"
    $result = ($sampleInput | python "$PSScriptRoot\04_numpy_sum_prod.py")
    $result.Length | Should -Be $sampleOutputLength
    $result | Should -Be $sampleOutputValue
  }
}
