<?php
$r=shell_exec('php --version');
echo substr($r, 0, 11), "\n";
echo shell_exec('php --conf');
