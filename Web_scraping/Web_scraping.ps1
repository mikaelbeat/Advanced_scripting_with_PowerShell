
clear

Set-Location "D:\Git\github\Advanced_scripting_with_PowerShell\Web_scraping"

$request = Invoke-WebRequest -Uri "https://www.w3schools.com/html/html_tables.asp"

$status_code = $request.StatusCode
$staus = $request.StatusDescription

Write-Output "Status code is $status_code."
Write-Output "$status"

# Get all links
#$request.Links
$request.Links | select href
$request.Links | select href | Out-File Urls_found.txt

$request.RawContent

$request.ParsedHtml.getElementsByTagName("TABLE")[0].outerhtml