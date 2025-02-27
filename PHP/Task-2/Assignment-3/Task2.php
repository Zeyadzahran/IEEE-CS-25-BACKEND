<?php 
function get_arguments(...$args) {
    // Method 1
   //$result = implode(" ", $args);
    
   // Method 2:
    $result = "";
    foreach ($args as $arg) {
        $result .= $arg . " ";
    }  
    return $result.'<br>';
}

// Test Cases
echo get_arguments("Hello", "Elzero", "Web", "School"); // Output: Hello Elzero Web School
echo get_arguments("I", "Love", "PHP"); // Output: I Love PHP