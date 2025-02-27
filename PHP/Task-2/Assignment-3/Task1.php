<?php

// Write Function Content Here
function greeting($name ,$gender = ""){
    
    if($gender == "") return "hello $name<br>";
    return "hello " .($gender=== "Male" ? "Mr " : "Miss "). "$name<br>"; 
}
// Needed Output
echo greeting("Osama", "Male"); // Hello Mr Osama
echo greeting("Eman", "Female"); // Hello Miss Eman
echo greeting("Sameh"); // Hello Sameh