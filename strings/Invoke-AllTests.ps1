foreach ($test in (Get-ChildItem -Path "$PSScriptRoot" -Filter "*_*.ps1")) {
  Write-Host "Executing $test"
  & "$PSScriptRoot\$test"
}