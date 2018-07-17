<?php
    $first = $_POST["first"];
    $second= $_POST["second"];
    $operator = $_POST["group1"];
if ($first=="") {
    echo "Error---->    Enter Number";
} elseif ($second=="") {
    echo "Error---->    Enter Number";
} else {
    switch ($operator) {
        case "add":
            echo $first + $second;
            break;
        case "subtract":
            echo $first - $second;
            break;
        case "times":
            echo $first * $second;
            break;
        case "divide":
            echo $first / $second;
            break;
    }
}
/*1. Create an application for an online calculator
Checklist
● Create two text fields, only numbers should be allowed, both fields are mandatory
● Provide options to add,multiply,subtract,divide (as radio buttons, by default add should
be checked)
● There should be a submit button and cancel button
● On submitting show the results in same page somewhere below the buttons
● On clicking Cancel all the fields to be reset to default
Use html5 validations, php-side validations, ajax for showing the results in the same page*/
