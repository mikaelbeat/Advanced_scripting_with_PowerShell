
clear

Set-Location D:\Git\github\Advanced_scripting_with_PowerShell

$file_location = "D:\Git\github\Advanced_scripting_with_PowerShell\"


    if (Test-Path $file_location\Kissa.txt) {
        Write-Output "File exist!"
    } else {
        Write-Output "File doesn't exist!"
    }


$start_time = Get-Date

while (!(Test-Path $file_location\Kissa.txt)) { 
    #$start_time = Get-Date
    Start-Sleep 1 
    Write-Output "Waiting for the file to appear"
}

$end_time = Get-Date

Write-Output "File found!"


Write-Output "$start_time --> $end_time" | Out-File Log.txt -Append
