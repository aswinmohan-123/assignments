<?php
$color = array('white', 'green', 'red', 'blue', 'black');
$p=array_search('red', $color);
unset($color[$p]);
echo implode(',', $color);
/*3. $color = array('white', 'green', 'red', 'blue', 'black')
Delete 'red' from the above array
Hint:array_search
*/
