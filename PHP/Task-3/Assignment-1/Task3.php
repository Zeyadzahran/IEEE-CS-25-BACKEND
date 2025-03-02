<?php 

$str = 'aAa';
$num = 3;
$char = "_";

// Write Your Code Here

echo rtrim(str_repeat(strtolower($str) . $char,3), $char);

// aaa_aaa_aaa_