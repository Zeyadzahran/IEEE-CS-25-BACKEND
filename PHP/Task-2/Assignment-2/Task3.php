<?php

$num = 2;
while ($num < 520) {
  if($num == 2){
     $num--;
     echo $num; 
     $num =  $num * 2 + 2;
     echo '<br>'; 
     continue;
    }
    echo $num;
    echo '<br>'; 
    $num =  $num * 2 + 2;

}
