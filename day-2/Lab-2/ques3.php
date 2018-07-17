<?php
function check($str)
{
    $str1= substr($str, -4, strlen($str));
    if ($str1 == '.com') {
        echo 'True';
    } else {
        echo 'False';
    }
}
$str = "test@test.com";
check($str);
