<?php
//error_reporting(0);
if($_COOKIE["name"]=='' ) 
{  
    $var=1;
    setcookie("name",$var,time()+1*60*60);
    echo "cookies value: ".$_COOKIE['name'];  
} 
else {  
    $var1=$_COOKIE['name'];
    $var1=$var1+1;
    setcookie("name",$var1,time()+1*60*60);
    echo "Cookie Value: " . $_COOKIE["name"];  
}  
?>











































