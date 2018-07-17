<?php
echo '1.';
$input=array('PHP', 'is', 'a', 'widely-used', 'open', 'source', 'general-purpose', 'scripting', 'language');
foreach ($input as $i) {
    echo $i, ' ';
}
echo '2.';
foreach ($input as $i) {
    $k=$input[sizeof($input)-1];
    if ($k==$i) {
        echo $i;
        break;
    }
    echo $i,'-';
}
echo ' 3.';
foreach ($input as $i) {
    echo $i, ' ';
}
/*8.
$input = array('PHP', 'is', 'a', 'widely-used', 'open', 'source', 'general-purpose', 'scripting', 'language');
From the above input generate the below outputs,
1. PHP is a widely-used open source general-purpose scripting language 2.
PHP-is-a-widely-used-open-source-general-purpose-scripting-language 3. PHP is a widely-used open
source general-purpose scripting language*/
