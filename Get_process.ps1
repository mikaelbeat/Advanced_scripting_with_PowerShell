
clear

Set-Location D:\Git\github\Advanced_scripting_with_PowerShell\

Write-Output "First 10 processes sorted by id"
Get-Process | Sort-Object id | Select-Object -First 10

Write-Output ""

Write-Output "First 10 processes sorted by CPU usage"
Get-Process | Sort-Object cpu -Descending | Select-Object -First 10

Write-Output ""

Get-Process | Where-Object { $_.CPU -gt 1000 } | Out-File -FilePath .\Processes.txt -Encoding string
