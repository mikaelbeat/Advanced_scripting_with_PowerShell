
$first_variable = "This is my variable"
$first_variable

# Global variable
$global:another_variable = "This can be accessed outside of the script!"

Set-Variable -Name "first_variable" -Value "This is my first variable overwritten!"

New-Variable -Name "new_variable" -Value "This is my new variable!"


#Remove-Variable -Name "variable"

#Clear-Variable -Name "variable" -> Clears variable value but leaves variable


# Setting variable to be constant
Set-Variable const_variable -Option Constant -Value 100

Set-Variable readonly_variable -Option ReadOnly -Value 100