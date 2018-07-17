<?php
$str="There is no installation needed to use these functions; they are part of the PHP core";
$s1 ="php";
$s2 ="JAVA";
$s3 ="PHP";
if (strpos($str, $s1) > 0 && strpos($str, $s1) < strlen($str)) {
    echo $s1," True","\n";
} else {
    echo $s1," False","\n";
}
if (strpos($str, $s2) > 0 && strpos($str, $s2) < strlen($str)) {
    echo $s2," True","\n";
} else {
    echo $s2," False","\n";
}
if (strpos($str, $s3) > 0 && strpos($str, $s3) < strlen($str)) {
    echo $s3," True","\n";
} else {
    echo $s3," False","\n";
}
/*3. $text = "There is no installation needed to use these functions; they are part of the PHP core";
Script to find out whether the following words exists in the above text and print true or false for
the following.
- PHP
- JAVA
- php
Note: Search should be case-insensitive also*/
