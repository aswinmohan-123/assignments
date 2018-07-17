<?php
$arr=array("Sophia"=>"31","Jacob"=>"41","William"=>"39","Ramesh"=>"40");
asort($arr);
echo "sorted according to val\n";
foreach ($arr as $k => $v) {
    echo $k," => ",$v,"\n";
}
ksort($arr);
echo "sorted according to key\n";
foreach ($arr as $k => $v) {
    echo $k," => ",$v,"\n";
}
arsort($arr);
echo "sorted according to dec-val\n";
foreach ($arr as $k => $v) {
    echo $k," => ",$v,"\n";
}
krsort($arr);
echo "sorted according to dec-key\n";
foreach ($arr as $k => $v) {
    echo $k," => ",$v,"\n";
}
/*5. Write a PHP script to sort the following associative array
array("Sophia"=>"31","Jacob"=>"41","William"=>"39","Ramesh"=>"40") in
a) ascending order sort by value
b) ascending order sort by Key
c) descending order sorting by Value
d) descending order sorting by Key*/
