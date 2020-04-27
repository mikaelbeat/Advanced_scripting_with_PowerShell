
[validateLength(3, 10)][string]$name = Read-Host "What is your name: "
[validaterange(18, 90)][int]$age = Read-Host "What is your age: "
[validateset("y", "Y")]$response = Read-Host "Is PowerShell awesome? (y, n) "
$password = Read-Host "Enter you password: " -AsSecureString

Write-Output "Your name is $name and your age is $age!"


Write-Host "Yellow text!" -ForegroundColor Yellow
Write-Host "Yellow text, red background!" -ForegroundColor Yellow -BackgroundColor Red