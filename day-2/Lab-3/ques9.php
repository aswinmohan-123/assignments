<?php
function check($str)
{
    if (strcmp($str, strrev($str))==0) {
        return 'its palindrom';
    } else {
        return 'its not palindrom';
    }
}
$str='nurse';
echo check($str);
