<?php
$filename='my_upgrade(1).zip';
$match='my_upgrade';
$val=strpos($filename, $match, strlen($match));
if ($val==0) {
    exit("filename contains match\n");
} else {
    echo 'filename does not contain match';
}
