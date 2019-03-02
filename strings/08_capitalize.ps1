$tmpFile = './tmp.txt'
$env:OUTPUT_PATH = $tmpFile

Describe 'Tests' {
  It 'Passes Tests' {
    "1 w 2 r 3g" | python "$PSScriptRoot\08_capitalize.py"
    Get-Content $tmpFile | Should -BeExactly '1 W 2 R 3g'
    "hello world" | python "$PSScriptRoot\08_capitalize.py"
    Get-Content $tmpFile | Should -BeExactly 'Hello World'
    "hello   world  lol" | python "$PSScriptRoot\08_capitalize.py"
    Get-Content $tmpFile | Should -BeExactly 'Hello   World  Lol'
  }

  AfterAll {
    Remove-Item $tmpFile
  }
}