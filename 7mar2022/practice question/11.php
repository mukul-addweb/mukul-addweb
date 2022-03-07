<?php
$p=2;
$t=5;
$r=3;
$ci=$p*(pow((1+$r/100),$t));
$si=($p*$r*$t)/100;

echo "compound interest ".$ci."<br/>";
echo "simple interest ".$si;

?>