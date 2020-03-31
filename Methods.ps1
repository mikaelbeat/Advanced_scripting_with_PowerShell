
clear


# Basic function

function say_hello {
    Write-Output "Hello from PowerShell!"
}

say_hello


# Function with parameters

function add_numbers {
    $total = $args[0] + $args[1]
    Write-Output "Sum of numbers is $total." 
}

add_numbers 5 7


# Passin argument to function

function passing_argument ($data) {
    Write-Output "Hello from $data!"
}

passing_argument NAME



# Passing array as argument

$names = @("Name1", "Name2", "Name3")

function array_hello($names) {
    foreach ($name in $names) {
        echo "Hi, this is $name!"
    } 
}

array_hello $names


# Named parameters

function introduction {
    param
        (
        [string]$name,
        [string]$profession,
        [int]$age
        )
    Write-Output "Hello, my name is $name and I am $age years old $profession"
}

introduction -name "Test" -profession "Tester" -age 30
