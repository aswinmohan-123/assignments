<?php
$input1=" PHP  ";
$input2="PHP";
$input3="  PHP";
echo implode('', explode(' ', $input1)), "\n";
echo implode('', explode(' ', $input2)), "\n";
echo implode('', explode(' ', $input3)), "\n";
/*10.
With the below input print the output as “PHP”
$input1 = " PHP "; $input2 = "PHP "; $input3 = " PHP ";*/
