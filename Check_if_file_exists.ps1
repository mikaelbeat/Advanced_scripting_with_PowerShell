
clear

Set-Location D:\Git\github\Advanced_scripting_with_PowerShell\

$exist = false

while ($exist == false) {

    if (Test-Path .\Kissa.txt) {
        Write-Output "File exist!"
        $exist = true
    } else {
        Write-Output "File doesn't exist!"
    }

}



while (!(Test-Path "Kissa.txt")) { 
    Start-Sleep 1 
    Write-Output "Waiting for the file to appear"
}

Write-Output "File found!"