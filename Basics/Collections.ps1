
clear

# Array
$Array_variable = @("10", 20)

# Arraylist
$Data_list = New-Object System.Collections.ArrayList
$Data_list.Add("Data1")
$Data_list.AddRange(("Data2", "Data3"))

Write-Output $Data_list


# Hashtable

$Hash_data = @{
    "Key1" = "First";
    "Key2" = "Second";
    "Key3" = "Third";
}

Write-Output $Hash_data["Key2"]
$Hash_data.Keys