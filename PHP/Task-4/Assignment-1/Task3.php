<?php

if (!is_dir("Programming")) 
    mkdir("Programming", 0711);

if (!is_dir("Programming/PHP")) {
    mkdir("Programming/PHP", 0711); 
}

if (is_dir("Programming/PHP")) {
    rmdir("Programming/PHP");
    echo "\"Directory Programming/PHP Removed <br>";
}

if (is_dir("Programming")) {
    rmdir("Programming");
    echo "\"Directory Programming Removed\"\n";
}

