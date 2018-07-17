<?php
$str="PHP is a widely-used open source general-purpose scripting language.";
$substr='';
$arr=explode(' ', $str);
foreach ($arr as $st) {
    if ($st=='PHP') {
        $substr=$substr. ' JAVA';
    } else {
        $substr=$substr. ' '. $st;
    }
}
echo $substr;
/*5.
Script to replace the word 'PHP' to 'Java' from the below given string.
"PHP is a widely-used open source general-purpose scripting language."*/
