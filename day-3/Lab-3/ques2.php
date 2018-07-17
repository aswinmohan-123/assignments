<?php
$input='17-07-2015 17:07:28';
$dt=new datetime($input);
echo $dt->format('Y-m-d'),$dt->format('H:m:s'),"\n";
echo $dt->format('d-m-y'),"\n";
echo $dt->format('H:m A'),"\n";
echo $dt->format('H:mA')," on ",$dt->format('D d'),"th ",$dt->format('M Y'),"\n";
/*2.
$input = '17-07-2015 17:07:28';
Print them in the following format using DateTime
2015-07-17 17:07:28
17/07/15
17:07 PM
17:07PM on Friday 17th July 2015*/
