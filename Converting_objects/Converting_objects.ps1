
clear

Set-Location = "D:\Git\github\Advanced_scripting_with_PowerShell\"

# List all services which starts with a with all properties
Get-Service -Name "a*" | Format-List -Property *

# List all services which starts with a with all three properties
Get-Service -Name "a*" | Format-List -Property Name, Status, DisplayName


# Format output to table
Get-Service -Name "a*" | Format-Table -Property *

# List all services which starts with a with all three properties
Get-Service -Name "a*" | Format-Table -Property Name, Status, DisplayName


# Get top 10 processes which are taking highest cpu
Get-Process | Sort-Object cpu -Descending | Select-Object -First 10 |
Format-Table processname, id, cpu


# HTML

# Converting output to different formats
Get-Service | ConvertTo-Html -Property Name, Status, DisplayName | Out-File "Services.html"

# Converting output to different formats
#Get-Service | ConvertTo-Html -Property Name, Status, DisplayName | -CssUri myStyle.css | Out-File 'files_Report.html'

# Add CSS to HTML
$head = @"
<style>
h1, h5, th { text-align: center; }
table { margin: auto; font-family: Segoe UI; box-shadow: 10px 10px 5px #888; border: thin ridge grey; }
th { background: #0046c3; color: #fff; max-width: 400px; padding: 5px 10px; }
td { font-size: 11px; padding: 5px 20px; color: #000; }
tr { background: #b8d1f3; }
tr:nth-child(even) { background: #dae5f4; }
tr:nth-child(odd) { background: #b8d1f3; }
</style>
"@

$head
$body="<h1>System's Process Information</h1>`n<h5>Updated: on $(Get-Date)</h5>"

Get-Service | ConvertTo-Html -Property Name, Status, Displayname -Head $head -Title "ReportTitle" -Body $body | 
Out-File 'Process_Report.html'


# CSV

# Convert to CSV
Get-Service -Name Appinfo | ConvertTo-Csv -Delimiter "*"


# JSON

# Convert to JSON
Get-Service -Name Appinfo | ConvertTo-Json


# XML

# Convert to XML
$data = Get-Process -Name "*a*" | ConvertTo-Xml
$data.FirstChild