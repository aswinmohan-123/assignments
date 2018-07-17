<?php
$date1='17-03-2015 17:07:28';
$date2='07/04/2015 09:00:00';
$dt=new datetime($date1);
$dt2=new datetime($date2);
if (strtotime($date1) > strtotime($date2)) {
    echo $dt -> format('d/m/Y');
} else {
    echo $dt2 -> format('d/m/Y');
}
/*4.
$date1 = '17-03-2015 17:07:28'; (day-month-year)
$date2 = '07/04/2015 09:00:00'; (month/day/year)
Compare the 2 dates and print the latest date
Use DateTime*/
