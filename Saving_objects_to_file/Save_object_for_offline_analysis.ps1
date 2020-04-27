
clear

Set-Location D:\Git\github\Advanced_scripting_with_PowerShell

Get-Process | Select-Object -Last 4 | Export-Clixml "Process_objects.xml"

$data = Import-Clixml Process_objects.xml | Select-Object -Last 2