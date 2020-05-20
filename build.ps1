Write-Output "PowerShell $($PSVersionTable.PSEdition) version $($PSVersionTable.PSVersion)"

#Set-StrictMode -Version 2.0; $ErrorActionPreference = "Stop"; $ConfirmPreference = "None"; trap { exit 1 }
#$path1 = 'C:\Program Files\Java\jdk1.8.0_241\bin\javac.exe';
#$path2 = 'C:\Program Files\Java\jdk1.8.0_241\bin\java.exe';
Write-Host "Congratulations! Your first script executed successfully"
#Invoke-Expression "$path1 -version"
#Invoke-Expression "$path2 -version"
Start-Process -FilePath javac -ArgumentList "$PSScriptRoot\HelloWorld.java" -NoNewWindow
#Start-Process -FilePath java -ArgumentList "-classpath HelloWorld" -NoNewWindow
cd $PSScriptRoot
Start-Process java -ArgumentList "-classpath . HelloWorld"  -NoNewWindow #`
#-RedirectStandardOutput '.\console.out' -RedirectStandardError '.\console.err' 
