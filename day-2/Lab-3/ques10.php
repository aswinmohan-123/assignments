<?php
$num=10;
$arr=[];
for ($i=1; $i<=$num; $i++) {
    $arr[$i]=$i;
}
echo implode('-', $arr), "\n";
