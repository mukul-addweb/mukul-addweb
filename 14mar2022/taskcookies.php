<html>
    <body>
        <form method="post" action="task.php">
    username: <input name="username"type="text" >
    password:<input name="password" type="password"><br/><br/>
    <input type="checkbox" name="remember" id="remember" value="remember">    remember me</input><br/><br/>
    <input type="submit" value="login"><br/>
</form>
</body>
</html>
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
