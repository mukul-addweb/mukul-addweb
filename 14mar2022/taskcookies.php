<html>
    <body>
        <form method="post" >
    username: <input name="username"type="text" >
    password:<input name="password" type="password"><br/><br/>
    <input type="checkbox" name="remember" id="remember" value="remember">    remember me</input><br/><br/>
    <input type="submit" value="login"><br/>
</form>
</body>
</html>




<?php

if(!empty($_POST["remember"])) {
	setcookie ("username",$_POST["username"],time()+ 36000);
	
	echo "Cookies Set Successfuly";
    header('Location:task.php');
} 

?>
