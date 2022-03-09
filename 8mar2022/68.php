<?php
$a=$_REQUEST['fvalue'];
$s=0;
$r=0;

for ($i=1;$i<=strlen($a);$i++)
{
    $r=$a%10;
    $s=$s+$r;
    $a=$a/10;
}
    echo "sum od digit" .$sum;
   
?>