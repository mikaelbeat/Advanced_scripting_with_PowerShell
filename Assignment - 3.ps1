
clear

Set-Location D:\Git\github\Advanced_scripting_with_PowerShell\

$date = Get-Date

$output_file = "Data.txt"

$name = Read-Host "Enter your uername"
$email = Read-Host "Enter your email"

Write-Output "$name, $email, Added at $date" | Out-File $output_file -Append
