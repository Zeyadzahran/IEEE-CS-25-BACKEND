<?php
$start = 10;
$end = 0;
$stop = 3;
for(;$start >= 3 ;--$start)
{
    if($start >= 10) echo $start;
    else echo $end . $start; 
    
    echo '<br>';
}
