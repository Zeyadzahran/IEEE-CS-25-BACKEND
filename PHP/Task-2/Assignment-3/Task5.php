<?php 
function check_status($a, $b, $c) {
    $name = '';
    $age = 0;
    $available = false;

    
    foreach ([$a, $b, $c] as $arg) {
        if (is_string($arg)) {
            $name = $arg;
        } elseif (is_int($arg)) {
            $age = $arg;
        } elseif (is_bool($arg)) {
            $available = $arg;
        }
    }

    
    $avM = $available ? 'You Are Available For Hire' : 'You Are Not Available For Hire';
    return "Hello $name, Your Age Is $age, $avM<br>";
}

// Needed Output
echo check_status("Osama", 38, true); // "Hello Osama, Your Age Is 38, You Are Available For Hire"
echo check_status(38, "Osama", true); // "Hello Osama, Your Age Is 38, You Are Available For Hire"
echo check_status(true, 38, "Osama"); // "Hello Osama, Your Age Is 38, You Are Available For Hire"
echo check_status(false, "Osama", 38); // "Hello Osama, Your Age Is 38, You Are Not Available For Hire"
?>