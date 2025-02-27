<?php 
function sum_all(...$args) {
   $result = 0 ;
    foreach ($args as $arg) {
        if($arg == 5 ) continue ;
        if($arg == 10 ) $result+=10;
        $result += $arg;
    }  
    return $result.'<br>';
}


// Needed Output
echo sum_all(10, 12, 5, 6, 6, 10); // 64
echo sum_all(5, 10, 5, 10); // 40