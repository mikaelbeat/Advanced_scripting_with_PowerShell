
#Get-Command -Name "*service*" | select -First 5

#Get-Help Get-Service -ShowWindow

<#
Multiline
comment
#>

#Save-Help D:\Git\github\Advanced_scripting_with_PowerShell\Export

# Print something
echo "Hello from echo"

# Print to the console
Write-Output "Writing something to console using Write-Output"


# Moving in folders
Get-Location
Set-Location D:\Git\github\Advanced_scripting_with_PowerShell\
Get-Location
# Goes back to starting location
Set-Location ..
Get-Location


# Get date
Get-Date


# Copying files

# Get list all files and folders in current location
#Get-ChildItem

# Get all files and folders (includes subfolders)
#Get-ChildItem -Recurse

# Get items in given path
Get-ChildItem -Path D:\Git\github\Advanced_scripting_with_PowerShell

# Copy file to given destination
#Copy-Item -Path D:\Demo\Demo.txt -Destination C:\Demo\

# Name for the file in destination cal also be defined
#Copy-Item -Path D:\Demo\Demo.txt -Destination C:\Demo\New_Demo.txt

# Copy all files to given destination
#Copy-Item -Path D:\Demo\* -Destination C:\Demo\

# Copy everything from source to destination except subfolders
#Copy-Item -Path D:\Demo\* -Destination C:\Demo\

# Copy everything from source to destination
#Copy-Item -Path D:\Demo\* -Destination C:\Demo\ -Recurse


# Moving files
# Same as copying but instead of Copy use Move


# Renaming files and folders

# Rename file
#Rename-Item -Path D:\Demo\Demo.txt -NewName New_Demo.txt

# Rename folder
#Rename-Item -Path D:\Demo\ -NewName New_Demo


# Deleting files and folders

# Delete file
#Remove-Iten -Path D:\Demo\Demo.txt

# Remove folder
#Remove-Item -Path D:\Demo - Recurse


# History of the run commands
#Get-History
#Clear-History



