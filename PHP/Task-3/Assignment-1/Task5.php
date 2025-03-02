<?php



$str = "Elzero Web School";
$e = "e";
$o = "O";
$four = 4;
echo substr_count($str, $e, 4 ); 
echo "<br>";
echo substr_count($str, strtolower($o), -$four); // 1

// 1
// 2