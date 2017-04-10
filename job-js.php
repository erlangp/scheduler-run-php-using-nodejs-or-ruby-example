<?php
$dt = new DateTime();
$dt->setTimeZone(new DateTimeZone('Asia/Makassar'));
$content = $dt->format('Y-m-d_H-i-s') . PHP_EOL;
$filename = 'job-js.log';
// save to file:
echo 'Updating file...';
echo PHP_EOL;
file_put_contents($filename, $content);
echo 'Done.';
echo PHP_EOL;
exit();
