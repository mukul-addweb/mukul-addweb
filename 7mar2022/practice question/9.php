<?php
$input=555555;

$sec=$input%60;
$hour=$input/60;
$min=$hour%60;

$hour=$hour/60;

echo "hour".(int)$hour ."minutes".(int)$min ."secounds".(int)$sec;

?>