Write-Output "PowerShell $($PSVersionTable.PSEdition) version $($PSVersionTable.PSVersion)"

#Set-StrictMode -Version 2.0; $ErrorActionPreference = "Stop"; $ConfirmPreference = "None"; trap { exit 1 }

Write-Host "Congratulations! Your first script executed successfully"
Invoke-Expression "C:\Program Files\Java\jdk1.8.0_241\bin\javac $PSScriptRoot\HelloWorld.java"
Invoke-Expression "C:\Program Files\Java\jdk1.8.0_241\bin\java.exe $PSScriptRoot\HelloWorld"
#Start-Process -FilePath javac -ArgumentList "$PSScriptRoot\HelloWorld.java"
#Start-Process -FilePath java -ArgumentList "$PSScriptRoot\HelloWorld"
