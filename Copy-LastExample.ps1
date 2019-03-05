[CmdletBinding()]
param (
  [string]
  $Directory = $PWD,

  [Parameter(Mandatory = $true)]
  [string]
  $ChallengeUrl
)

Push-Location
Set-Location $Directory

if ($PWD -eq $PSScriptRoot) {
  Pop-Location
  throw "You need to specify a directory"
}

function Read-MultiLineInputBoxDialog([string]$Message, [string]$WindowTitle, [string]$DefaultText) {
  Add-Type -AssemblyName System.Drawing
  Add-Type -AssemblyName System.Windows.Forms
     
  # Create the Label.
  $label = New-Object System.Windows.Forms.Label
  $label.Location = New-Object System.Drawing.Size(10, 10) 
  $label.Size = New-Object System.Drawing.Size(280, 20)
  $label.AutoSize = $true
  $label.Text = $Message
     
  # Create the TextBox used to capture the user's text.
  $textBox = New-Object System.Windows.Forms.TextBox 
  $textBox.Location = New-Object System.Drawing.Size(10, 40) 
  $textBox.Size = New-Object System.Drawing.Size(575, 200)
  $textBox.AcceptsReturn = $true
  $textBox.AcceptsTab = $false
  $textBox.Multiline = $true
  $textBox.ScrollBars = 'Both'
  $textBox.Text = $DefaultText
     
  # Create the OK button.
  $okButton = New-Object System.Windows.Forms.Button
  $okButton.Location = New-Object System.Drawing.Size(415, 250)
  $okButton.Size = New-Object System.Drawing.Size(75, 25)
  $okButton.Text = "OK"
  $okButton.Add_Click( { $form.Tag = $textBox.Text; $form.Close() })
     
  # Create the Cancel button.
  $cancelButton = New-Object System.Windows.Forms.Button
  $cancelButton.Location = New-Object System.Drawing.Size(510, 250)
  $cancelButton.Size = New-Object System.Drawing.Size(75, 25)
  $cancelButton.Text = "Cancel"
  $cancelButton.Add_Click( { $form.Tag = $null; $form.Close() })
     
  # Create the form.
  $form = New-Object System.Windows.Forms.Form 
  $form.Text = $WindowTitle
  $form.Size = New-Object System.Drawing.Size(610, 320)
  $form.FormBorderStyle = 'FixedSingle'
  $form.StartPosition = "CenterScreen"
  $form.AutoSizeMode = 'GrowAndShrink'
  $form.Topmost = $True
  $form.AcceptButton = $okButton
  $form.CancelButton = $cancelButton
  $form.ShowInTaskbar = $true
     
  # Add all of the controls to the form.
  $form.Controls.Add($label)
  $form.Controls.Add($textBox)
  $form.Controls.Add($okButton)
  $form.Controls.Add($cancelButton)
     
  # Initialize and show the form.
  $form.Add_Shown( {$form.Activate()})
  $form.ShowDialog() > $null   # Trash the text of the button that was clicked.
     
  # Return the text that the user entered.
  return $form.Tag
}

$sampleInput = Read-MultiLineInputBoxDialog -Message "Enter Sample Input" -WindowTitle "Input" -DefaultText ""
if ($null -eq $sampleInput) {
  throw "Cancelled by user"
}
$sampleInput = $sampleInput -replace "[`r`n]+", "``n"

$sampleOutput = Read-MultiLineInputBoxDialog -Message "Enter Sample Output" -WindowTitle "Output" -DefaultText ""
if ($null -eq $sampleOutput) {
  throw "Cancelled by user"
}
$sampleOutput = $sampleOutput -replace "[`r`n]+", "``n"

$files = (Get-ChildItem . | Where-Object {$_.Name -match "[0-9]*_.*\.py"})
$baseName = $files[$files.Length - 1].BaseName

$number = "0" + ([int]$baseName.Split('_')[0] + 1)
$number = "$number".Substring("$number".Length - 2, 2)
$newFileName = $ChallengeUrl.Split("/")[-1].Replace("-", "_")

Copy-Item "$baseName.py" "$($number)_$newFileName.py"
(Get-Content "$PSScriptRoot\testing_template.ps1") `
  -replace "SCRIPT_NAME_PLACEHOLDER", "$($number)_$newFileName.py" `
  -replace "CHALLENGE_URL_PLACEHOLDER", "$ChallengeUrl" `
  -replace "SAMPLE_INPUT_PLACEHOLDER", "$sampleInput"  `
  -replace "SAMPLE_OUTPUT_PLACEHOLDER", "$sampleOutput" | `
  Set-Content "$($number)_$newFileName.ps1"

Pop-Location