<?php
$cities=array(
"Itanagar",
"Dispur",
"Patna",
"Panaji",
"Raipur",
"Gandhinagar",
"Srinagar",
"Bangalore"
);
for ($i=0; $i<sizeof($cities); $i++) {
    echo $cities[$i];
    echo $i<sizeof($cities)-1 ? ",":"";
}
echo "\n";
array_push($cities, 'Thiruvananthapuram', 'Bhopal', 'Mumbai', 'Bangalore', 'Raipur');
sort($cities);
for ($i=0; $i<sizeof($cities); $i++) {
    echo $cities[$i];
    echo $i<sizeof($cities)-1 ? ",":"";
}
echo "\n";
/*8. Create an array like this
$cities=array(
"Itanagar",
"Dispur",
"Patna",
"Panaji",
"Raipur",
"Gandhinagar",
"Srinagar",
"Bangalore"
);
Print these using a for loop separated by coma.
Add/Push these four cities to the same array
Thiruvananthapuram, Bhopal, Mumbai, Bangalore, Raipur
Sort them, ignore duplicates and again print these using a for loop seperated by coma*/
