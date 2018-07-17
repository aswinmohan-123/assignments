<?php
function prime($num)
{
    $flag=0;
    for ($i=2; $i<$num/2; $i++) {
        if ($num%$i==0) {
            $flag=1;
            break;
        }
    }
    return $flag==0?'prime':'not prime';
}
$number=19;
echo prime($number);
