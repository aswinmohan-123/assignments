<?php
$input='15-07-2015 09:30:00';
$date=new datetime($input);
$date->modify('+7 days');
echo $date->format('Y-m-d H:i:s'),"\n";
$date->modify('-7 days +1 month');
echo $date->format('Y-m-d H:i:s'),"\n";
$date->modify('-1 month +1 year');
echo $date->format('Y-m-d H:i:s'),"\n";
/*3.
$input = '15-07-2015 09:30:00';
Use DateTime
Print the time exactly one week after the above date and print it in the format 'Y-m-d H:i:s'
Print the time exactly one month after the above date and print it in the format 'Y-m-d H:i:s'
Print the time exactly one year after the above date and print it in the format 'Y-m-d H:i:s'
(Make use of "modify" function of DateTime)
Add 10 days to the above date and print it in the format 'm/d/Y'
(Make use of DateInterval)
Subtract 3 days to the above date and print it in the format 'd-m-Y'
Print the time one month before the above date and print it in the format 'Y-m-d H:i:s'*/
