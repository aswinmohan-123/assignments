<?php
$cmd1="cd /tmp";
$cmd2="rm Lab.pdf";
$cmd3="rm php.txt";
$cmd4="rm Wiki-PHP.html";
shell_exec($cmd1.";".$cmd2.";".$cmd3.";".$cmd4);
/*Script to delete all the example files created in "/tmp" as part of the above questions*/
