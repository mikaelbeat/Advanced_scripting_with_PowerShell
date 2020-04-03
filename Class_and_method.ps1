
clear

class Product{
[String]$name= "NA"
[int32]$price= 0
}


$keyboard = New-Object Product
$keyboard
$keyboard.name = "Keyboard"
$keyboard.price = 40
$keyboard


class MathClass{
[int32]$value1 = 0 
[int32]$value2 = 0
}


[int32] Addition(){
    return "$this.value1 + $this.value2";
}

[String]toString(){
    return "Hello $this.value1 and $this.value2";
}


$math_obj = New-Object MathClass
$math_obj
$math_obj.value1 = 10
$math_obj.value2 = 15
$math_obj.Addition()

