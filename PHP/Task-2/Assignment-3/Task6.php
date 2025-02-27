<?php 
function calculate($num1, $num2, $operation = 'a') {
   
    switch ($operation) {
        case 'a':
        case 'add':
            return $num1 + $num2;
        case 's':
        case 'subtract':
            return $num1 - $num2;
        case 'm':
        case 'multiply':
            return $num1 * $num2;
        default:
           echo "Invalied Input<br>";
    }
}

// Needed Output
echo calculate(10, 20) . '<br>'; // 30
echo calculate(10, 20, "a") . '<br>'; // 30
echo calculate(10, 20, "s") . '<br>'; // -10
echo calculate(10, 20, "subtract") . '<br>'; // -10
echo calculate(10, 20, "multiply") . '<br>'; // 200
echo calculate(10, 20, "m") . '<br>'; // 200
?>