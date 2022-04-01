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
        
        Email:    <input type="text" name = "email"/></br>
        Password: <input type="password" name = "password"/></br>
        confirm Password: <input type="password" name = "confirm_password"/></br>
        Name :    <input type="text" name="name"/><br/>
        address : <input type="text" name="address"/><br/>
        Phone :   <input type="number" name="phone" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" /></br>
        <input type="submit" name="Register" value="Register"/>
    </form>
    </div>
</body>

</html>

<?php

if(isset($_POST['Register'])){
    $email= $_POST['email'];
    $password = $_POST['password'];
    $confirmpassword = $_POST['confirm_password'];
    $name = $_POST['name'];
    $address = $_POST['address'];
    $phone = $_POST['phone'];
    $con = mysqli_connect("localhost","root","","rdbms") or die ("error in connection");
    $abc="Insert into login (email,password,confirm_password,name,address,phone) values('$email','$password','$confirmpassword','$name','$address',$phone)";
    echo $abc;
    $query= mysqli_query($con,$abc) or die("error in query");
    if($query)
    {
        
        echo "<script>alert('Sign up successfully')</script>";
        header('Location:login.php');
    }
    else
    {
        echo "<script>alert('something went wrong')</script>";
    }
    
    mysqli_close($con);

}

?>