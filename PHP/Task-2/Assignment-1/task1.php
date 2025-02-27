<?php
$a = 100;
$b = 200;
$c = 100;

/*
  Check That:
  Variable "b" Larger Than Variable "a"
  Variable "a" Identical To Variable "c"
  Variable "a" Plus Variable "c" Identical To Variable "b"
*/
if($a < $b)
{
    if($a === $b)
    {
        if($a + $c === $b){
            echo "Yes";
        }
        else 
        echo "Third Condition NO";
}
else
{
        echo "Second Condition NO";
    }

}else 
{
    echo "Fisrt Condition NO";
}
