<?php
$url='http://www.w3resource.com/php-exercises/php-basic-exercises.php';
echo 'Scheme : ', substr($url, 0, strpos($url, ':')), "\n";
echo 'Host : ', substr($url, strpos($url, ':')+3, strpos($url, '.com')-3), "\n";
echo 'Path : ', substr($url, strpos($url, '.com')+4, strlen($url)), "\n";
