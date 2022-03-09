<?php
$n= $_GET['number'];
$r=0;
$temp=$n;
while($n!=0)
{
    $a=(int)$n%10;
    $n=(int)$n/10;
    $r=($r*10)+$a;
    echo $a."<br/>";
}
if($temp==$r)
    echo $temp." is palindrome";
else
    echo $temp." is not palindrome";

?>