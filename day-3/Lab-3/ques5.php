<?php
$d=date('Y-m-d H:i:s');
$date=new datetime($d);
$date->settimezone(new datetimezone('IST'));
echo "IST : ",$date->format('Y-m-d H:i:s'),"\n";
$date2=new datetime($d);
$date2->settimezone(new datetimezone('BST'));
echo "London : ",$date2->format('Y-m-d H:i:s'),"\n";
$date3=new datetime($d);
$date3->settimezone(new datetimezone('UTC'));
echo "utc : ",$date3->format('Y-m-d H:i:s'),"\n";
$date4=new datetime($d);
$date4->settimezone(new datetimezone('America/chicago'));
echo "Chicago : ",$date4->format('Y-m-d H:i:s'),"\n";
/*Get the current time and print them in 'Y-m-d H:i:s' format for all the below timezones
IST
Europe/London (BST)
UTC
America/Chicago*/
