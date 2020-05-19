Write-Output "PowerShell $($PSVersionTable.PSEdition) version $($PSVersionTable.PSVersion)"

#Set-StrictMode -Version 2.0; $ErrorActionPreference = "Stop"; $ConfirmPreference = "None"; trap { exit 1 }
#$path1 = "C:\Program Files\Java\jdk1.8.0_241\bin\javac.exe";
#$path2 = "C:\Program Files\Java\jdk1.8.0_241\bin\java.exe";
Write-Host "Congratulations! Your first script executed successfully"
#Invoke-Expression "$path1 $PSScriptRoot\HelloWorld.java"
#Invoke-Expression "$path2 $PSScriptRoot\HelloWorld"
Start-Process -FilePath "C:\Program Files\Java\jdk1.8.0_241\bin\javac.exe" -ArgumentList "$PSScriptRoot\HelloWorld.java"
Start-Process -FilePath "C:\Program Files\Java\jdk1.8.0_241\bin\java.exe" -ArgumentList "$PSScriptRoot\HelloWorld"
