<?php
$i = 0;
$mix = [1, 2, 3, "A", "B", "C", 4];


for ($i = 0; $i < count($mix); $i++) {
    if ($mix[$i] == 1 or !is_int($mix[$i])) {
        continue;
    }
    echo $mix[$i] . "<br>";
}
?>