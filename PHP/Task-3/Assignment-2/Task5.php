<?php
$nums = [5, 10, 20, 5, 30, 40];

echo array_reduce(array_filter($nums, fn($a) => $a != 5), fn($a , $b)=> $a+$b);
echo "<br>";
