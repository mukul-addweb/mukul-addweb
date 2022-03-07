<?php

$day=397;
$weak=($day%365)/7;
$year=$day/365;
$day=($day-(($year*365)+($weak)));
echo "year=".(int)$year ."weak=".(int)$weak ."day=".(int)$day;

?>