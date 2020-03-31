
clear

# And operator
if ((5 -gt 1) -and (4 -lt 10)) {
    Write-Output "Both are true!"
} else {
    Write-Output "One is false!"
}


# Switch
switch (1) {
    1 {"Value is 1"}
    2 {"Value is 2"}
    3 {"Value is 3"}
}
