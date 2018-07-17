<?php
function fact($num)
{
    return $num==0?1:$num*fact($num-1);
}
$number=6;
echo fact($number);
