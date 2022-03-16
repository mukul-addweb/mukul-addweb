<?php

	$a=$_POST['username'];
	$b=$_POST['password'];
if($a=="admin" && $b=="123")
{
	session_start();
	$_SESSION["user"]=$a;
	header('Location:session3.php');
}
else
{
    echo “Incorrect username or password”;

}	
?>

<?php
session_start();
$a=$_SESSION["user"];
echo $a;
?>
