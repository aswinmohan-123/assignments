<?php
$color=array('A' => 'Blue', 'B' => 'Green', 'c' => 'Red');
$color1=array();
$color2=array();
foreach ($color as $k => $v) {
    $v=strtolower($v);
    echo $k," => ",$v,"\n";
}
foreach ($color as $c) {
    array_push($color1, $c);
}
foreach ($color as $k => $v) {
    $v=strtoupper($v);
    echo $k," => ",$v,"\n";
}
foreach ($color as $c) {
    array_push($color2, $c);
}
/*6. Write a PHP function to change the following array's all values to upper or lower case.
Sample arrays :
$Color = array('A' => 'Blue', 'B' => 'Green', 'c' => 'Red');
Expected Output :
Values are in lower case.
Array ( [A] => blue [B] => green [c] => red )
Values are in upper case.
Array ( [A] => BLUE [B] => GREEN [c] => RED )*/
