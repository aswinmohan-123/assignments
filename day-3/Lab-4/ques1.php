<?php
include 'library.php';
if ($argc>1) {
    echo ly($argv[1]);
} else {
    return "Script usage:\nphp ".$argv[1]." {Date}\ndate - year you want to check\n";
}
/*1. Script to show whether the given date is a leap year
Create a new library file - library.php
Add a new function to check whether the given date is a leap year
Create the script which accepts an input parameter
Include the library and call the function and shows the result accordingly
Input parameter should not be blank, should be an integer
Incase the above condition fails, show the following message
Script Usage:
php Script1.php {date}
date - Year you want to check*/
