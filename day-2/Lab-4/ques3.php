<?php
$num=5;
$k=1;
for ($i=0; $i<$num; $i++) {
    for ($j=0; $j<=$i; $j++) {
        echo $k, " ";
        $k+=1;
    }
    echo "\n";
}
