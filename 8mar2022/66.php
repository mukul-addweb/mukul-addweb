<?php
$i= $_GET['number'];
$r=0;
$n=1;
while($n<=$i){
    $temp=$n;
    while($n!=0)
    {
        
        $a=(int)$n%10;
        $n=(int)$n/10;
        $r=($r*10)+$a;
        
    }
    $n++;
    if($temp==$r)
        echo $temp." is palindrome<br/>";
    else
        echo $temp." is not palindrome<br/>";
}
?>