<!DOCTYPE html>
<html>
<head>
</head>
<body>
    <form method="post">
        email: <input type="text" name = "email"/></br>
        password: <input type="password" name = "password"/></br>
        <input type="submit" name="Login" value="Login"/>
    </form>
</body>
</html>

<?php

if(isset($_POST['Login'])){
    $email= $_POST['email'];
    $password = $_POST['password'];

    $con = mysqli_connect("localhost","root","","rdbms") or die ("error in connection");
    $query = mysqli_query($con,"select * from login where email='$email' and password='$password'" ) or die("error in query");

    $rows = mysqli_num_rows($query);
    if($rows>0){
        echo "login successfully";
    }
    else{
        echo "incorrect username or password";
    }
    mysqli_close($con);
}

?>