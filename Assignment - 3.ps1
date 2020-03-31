
clear

$output_file = "Data.txt"

$name = Read-Host "Enter your uername"
$age = Read-Host "Enter your password"

Write-Output "perkele" | Add-Content $output_file -Append
