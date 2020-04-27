
clear

Get-Process | Out-GridView
Get-Service | Out-GridView
Get-WmiObject -Namespace 'root\cimv2' -List | Out-GridView