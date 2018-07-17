<?php
$handle=fopen("/tmp/Wiki-PHP.html", "w");
fwrite($handle, file_get_contents("https://en.wikipedia.org/wiki/PHP"));
/*3.
Get the contents from the page - "https://en.wikipedia.org/wiki/PHP"
Write all the contents as such to a file in '/tmp/Wiki-PHP.html'*/
