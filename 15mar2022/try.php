<?php

setcookie("name","mukul",time()+36000);
setcookie("id","12",time()+36000);
?>////

<?php 
if(!isset($_COOKIE["name"])){
	echo "COOKIE not found";
}
else
{
	echo "COOKIE is ".$_COOKIE["name"];
}
?>

<?php
if(!empty($_POST["remember"])) {
	setcookie ("username",$_POST["username"],time()+ 3600);
	setcookie ("password",$_POST["password"],time()+ 3600);
	echo "Cookies Set Successfuly";
} else {
	setcookie("username","");
	setcookie("password","");
	echo "Cookies Not Set";
}


?>
