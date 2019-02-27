foreach ($test in (Get-ChildItem -Path "$PSScriptRoot" -Filter "*_test.ps1")) {
  Write-Host "Executing $test"
  & "$PSScriptRoot\$test"
}