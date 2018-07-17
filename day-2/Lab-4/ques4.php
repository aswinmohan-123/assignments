<?php
$input="phpresource";
$count=0;
for ($i=0; $i<strlen($input); $i++) {
    if ($input[$i]=='r') {
        $count+=1;
    }
}
echo 'Count : ',$count,"\n";
