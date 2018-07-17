<?php
$date1=new datetime("2014-04-30 08:00:00");
$date2=new datetime("2017-07-17 07:00:00");
$d=$date1->diff($date2);
echo "differents: ",$d->format('%Y years,%m months,%d days,%H hours'),"\n";
/*7.
$date1 = "2014-04-30 08:00:00";
$date1 = "2017-07-17 07:00:00";
Calculate the time duration between the above 2 dates
Show in X months, Y days, hours minutes*/
