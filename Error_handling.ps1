
clear

Set-Location D:\Git\github\Advanced_scripting_with_PowerShell\

$data_file = "Data_with_content.txt"

try {

$user_data = Get-Content $data_file -ErrorAction Stop
} catch {
    Write-Output "Data file $data_file not found!"
}

Write-Output $user_data

