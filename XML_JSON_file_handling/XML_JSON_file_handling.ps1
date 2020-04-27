
clear

Set-Location D:\Git\github\Advanced_scripting_with_PowerShell\

# Read XML file
[xml]$xml_data = Get-Content .\Sample.xml

$xml_data.GetType()

# Get main nodes
$xml_data.breakfast_menu

# Get main nodes first element
$xml_data.breakfast_menu.food[0]

# Get main nodes first elements price
$xml_data.breakfast_menu.food[0].price


Write-Output "" 
Write-Output " ------------- JSON Training ------------- "
Write-Output ""


# Read JSON file
$json_data = Get-Content .\Sample.json | Out-String | ConvertFrom-Json

$json_data.GetType()

# Get value from JSON
$json_data.id
$json_data.image.url