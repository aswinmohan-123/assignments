<?php
$work=0;
$date1=new datetime("01-06-2015");
$date2=new datetime("31-07-2015");
$dif=$date1->diff($date2);
for ($i=0; $i<(int)$dif->format('%d'); $i++) {
    echo $dif->format('%a');
}
echo "Total day : ",$dif->format('%d'),"\n";
echo "working day : ",$dif->format('%weekday'),"\n";
/*8. Get number of working days between '01/06/2015' and '31/07/2015'*/
