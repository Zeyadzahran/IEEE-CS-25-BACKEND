<?php 


$num_one = -1;
$num_two = 2.5;

$let_one = "o";
$let_two = "z";

$str = "El%er0";

$str[(int)$num_two] = "z";
$str[$num_one] = "o";

// Write Your Code Here

echo $str; // Elzero