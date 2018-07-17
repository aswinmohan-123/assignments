<?php
function check($input1, $input2)
{
    $r= 0;
    $r= substr_compare($input1, $input2, 0);
    if ($r == 0) {
        return 'True';
    } else {
        return 'False';
    }
}
$input1 = 'Hello world';
$input2 = 'Hello world';
echo check($input1, $input2), "\n";
