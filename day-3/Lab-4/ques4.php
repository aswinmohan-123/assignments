<?php
$fi=fopen("/tmp/Lab.pdf", "w");
fwrite($fi, file_get_contents("test.pdf"));
/*Copy the entire contents from Lab5-File.pdf and write it to a file in '/tmp/Lab.pdf'*/
