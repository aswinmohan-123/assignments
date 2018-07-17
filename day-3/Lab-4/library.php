<?php
function ly($input)
{
    $leap=date('L', mktime(0, 0, 0, 1, 1, $input));
    if ($leap) {
        return "\n This is leap year\n";
    } else {
        return "\n This is not leap year\n";
    }
}
