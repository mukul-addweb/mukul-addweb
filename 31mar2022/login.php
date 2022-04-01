<!DOCTYPE html>
<html>
<head>
<style>
.login_center {
  /*background-color: lightgrey;*/
  display: flex;
  /*border: 15px solid green;*/
  padding: 100px;
  margin-top: 150px;
  justify-content: center;
}
</style>
</head>
<body>
    <div class="login_center">
        <form method="post">
        email:    <input type="text" name = "email"/></br>
        password: <input type="password" name = "password"  minlength="8"/></br> 
        <input type="checkbox" id="remember" value="rememeber" name="remember">Rememeber me</input><br><br> 
        <input type="submit" name="sign" value="Sign up"/>
        <input type="submit" name="login" value="Login"/>
    </form>

</div>
</body>
</html>

<?php
ob_start();
if(isset($_POST['remember'])){
    setcookie("email",$_POST["email"],time()+36000);
}

if(isset($_POST['login'])){
    $email=$_POST['email'];
    $password=$_POST['password'];
    $con=mysqli_connect("localhost","root","","rdbms") or die(" error in connection");
    

    $query = mysqli_query($con,"select * from login where email='$email' and password='$password'" ) or die("error in query");
    $rows = mysqli_num_rows($query);
    if($rows>0){
        echo "login successfully";
        header('Location:dashboard.php');
    }
    else{
        echo "incorrect email or password";
    }
    
    mysqli_close($con);
}

if(isset($_POST['sign']))
{
    header('Location:sign.php');
}
?>