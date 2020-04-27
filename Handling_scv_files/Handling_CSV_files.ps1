
clear

Set-Location D:\Git\github\Advanced_scripting_with_PowerShell\


# Read CSV content
$csv_content = Import-Csv .\Data.csv
Write-Output $csv_content


# Create new CSV file and add content from array
Add-Content -Path New_created_CSV_data.csv -Value "Id; Product; Price"

$data = @(
    "1; Mouse; 40"
    "2; Monitor; 600"
    "3; Gamepad; 60"
)

$data | foreach { Add-Content -Path New_created_CSV_data.csv -Value $_ } 


# Sort and create new CSV file
Import-Csv .\New_created_CSV_data.csv | Sort-Object Price | Export-Csv Sorted.csv -NoTypeInformation