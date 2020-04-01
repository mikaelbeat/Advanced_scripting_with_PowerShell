
clear

Set-Location D:\Git\github\Advanced_scripting_with_PowerShell\

# Read from a file

if (Test-Path .\Data.txt) {
    $content = Get-Content Data.txt
    Write-Output $content
} else {
    Write-Output "File not found"
}


# Write to file

$order_id = Get-Random
$date = Get-Date
$product = Read-Host "Enter product"
$amount = Read-Host "Enter amount"


Write-Output "$order_id, $amount, $product, $date" | Out-File Order.txt -Append