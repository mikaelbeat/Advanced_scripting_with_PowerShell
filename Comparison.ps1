clear

# Check is equal
2 -eq 2

# Check is equal in case sentive
"Hello" -ceq "HELLO"

# Less than
5 -lt 10

# Find string
"PowerShell" -like "*shell*"

# Matching string
"Sunday" -match "sun"
"Sunday", "Mondays" -match "sun"

# Contains
"Windows", "PowerShell" -contains "PowerShell"