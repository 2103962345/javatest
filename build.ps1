Write-Output "PowerShell $($PSVersionTable.PSEdition) version $($PSVersionTable.PSVersion)"

#Set-StrictMode -Version 2.0; $ErrorActionPreference = "Stop"; $ConfirmPreference = "None"; trap { exit 1 }

Write-Host "Congratulations! Your first script executed successfully"
Invoke-Expression "javac $PSScriptRoot\HelloWorld.java"
Invoke-Expression "java $PSScriptRoot\HelloWorld"
#Start-Process -FilePath javac -ArgumentList "$PSScriptRoot\HelloWorld.java"
#Start-Process -FilePath java -ArgumentList "$PSScriptRoot\HelloWorld"
