<?php
$handle=fopen("php.txt", "r");
$handle2=fopen("/tmp/php.txt", "w");
$handle3=fopen("/tmp/php.txt", "a");
while (!feof($handle)) {
    $str=fgets($handle)."\n";
    if (strpos($str, 'php')>1) {
        fwrite($handle3, $str);
    }
    if (strpos($str, 'PHP')>1) {
        fwrite($handle3, $str);
    }
}
/*Read php.txt line by line
If the line has word PHP or php write that line to a new file in 'tmp' folder with the same name*/
