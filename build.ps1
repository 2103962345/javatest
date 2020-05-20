Write-Output "PowerShell $($PSVersionTable.PSEdition) version $($PSVersionTable.PSVersion)"

#Set-StrictMode -Version 2.0; $ErrorActionPreference = "Stop"; $ConfirmPreference = "None"; trap { exit 1 }
Write-Host "Congratulations! Your first script executed successfully"

cd $PSScriptRoot
Start-Process -FilePath javac -ArgumentList "HelloWorld.java" `
-RedirectStandardOutput '.\console1.out' -RedirectStandardError '.\console1.err' 
#Start-Process -FilePath java -ArgumentList "-classpath HelloWorld" -NoNewWindow
gc console1.out
gc console1.err
Start-Process java -ArgumentList '-cp', '.', 'HelloWorld' `
-RedirectStandardOutput '.\console2.out' -RedirectStandardError '.\console2.err' 
gc console2.out
gc console2.err
