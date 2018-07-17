<?php
$d=new datetime('jul-2015');
$fri=0;
$sat=0;
for ($i=0; $i<=30; $i++) {
    if ($d -> format('D')=='Fri') {
        $fri+=1;
    }
    if ($d -> format('D')=='Sat') {
        $sat+=1;
    }
    $d -> modify('+1 day');
}
echo "saturdays : ",$sat,"\n";
echo "fridays : ",$fri,"\n";
/*6.
Print the number of Fridays and Saturdays for the month of July in 2015*/
