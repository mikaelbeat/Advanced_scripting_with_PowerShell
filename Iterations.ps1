
clear


# While
$data = 1

while ($Data -le 5) {
    Write-Output "Value is $data."
    $data +=1
}

Write-Output "Done"


# Loop

$data_array = @("Data1", "Data2", "Data3")

for ($value=0; $value -le $data_array.Count; $value++) {
    Write-Output $data_array[$value]
}