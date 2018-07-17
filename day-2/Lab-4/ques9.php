<?php
$str='football';
$str1='footboll';
$check=1;
for ($i=1; $i<=strlen($str); $i++) {
    if ($str[$i] != $str1[$i]) {
        $check=0;
        break;
    }
}
if ($check==0) {
    echo 'First difference between two strings at position ', $i, ': ', '"', $str[$i], '" VS "',$str1[$i], '"', "\n";
}
