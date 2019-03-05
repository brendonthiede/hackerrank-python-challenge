[CmdletBinding()]
param (
  [string]
  $Directory = $PWD
)

Push-Location
Set-Location $Directory

if ($PWD -eq $PSScriptRoot) {
  Pop-Location
  throw "You need to specify a directory"
}

foreach ($test in (Get-ChildItem -Path . -Filter "*_*.ps1")) {
  Write-Host "Executing $test"
  & ".\$test"
}

Pop-Location