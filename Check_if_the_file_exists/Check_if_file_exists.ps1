
clear

$file_location = "D:\Git\github\Advanced_scripting_with_PowerShell\"


    if (Test-Path $file_location\Kissa.txt) {
        Write-Output "File exist!"
    } else {
        Write-Output "File doesn't exist!"
    }