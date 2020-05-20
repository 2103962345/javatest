Write-Output "PowerShell $($PSVersionTable.PSEdition) version $($PSVersionTable.PSVersion)"

#Set-StrictMode -Version 2.0; $ErrorActionPreference = "Stop"; $ConfirmPreference = "None"; trap { exit 1 }
Write-Host "Congratulations! Your first script executed successfully"

cd $PSScriptRoot
Start-Process -FilePath javac -ArgumentList "HelloWorld.java" -NoNewWindow
Start-Process -FilePath javac -ArgumentList "-version" -NoNewWindow
#Start-Process -FilePath java -ArgumentList "-classpath HelloWorld" -NoNewWindow

Start-Process java -ArgumentList "-classpath . HelloWorld"  -NoNewWindow #`
#-RedirectStandardOutput '.\console.out' -RedirectStandardError '.\console.err' 
