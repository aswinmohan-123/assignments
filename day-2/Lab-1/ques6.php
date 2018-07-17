<?php
$str="PHP is a widely-used open source general-purpose scripting language.";
$arr=explode(' ', $str);
for ($i=0; $i<sizeof($arr); $i++) {
    echo $arr[$i];
}
/*6.
Script to break the entire string mentioned above into array. Separate it with ' ' (empty space)*/
