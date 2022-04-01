<?php
$user = $_REQUEST['email'];
$con = mysqli_connect("localhost","root","","rdbms") or die ("error in connection");
$query = mysqli_query($con,"select * from login where email='$user'") or die("error in query");
while($row=mysqli_fetch_array($query))
{
    
    $email = $user;
    $password = $row["password"];
    $name = $row["name"];
    $address = $row["address"];
    $phone = $row["phone"];
        
}
mysqli_close($con);
?>

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
        Username: <input type="text" name="email" value="<?php echo $email ?>" /><br/>
        Password: <input type="text" name = "password" value="<?php echo $password ?>"/></br>
        name: <input type="text" name = "name" value="<?php echo $name ?>"/></br>
        address: <input type="text" name = "address" value="<?php echo $address ?>"/></br>
        Phone: <input type="number" name="phone" pattern="[0-9]{1}" value="<?php echo $phone ?>"/></br>
        <input type='submit' name='update' value='Update'/>
    </form>
    </div>
</body>

</html>

<?php

if(isset($_POST['update'])){
    $email=$_POST['email'];
    $password=$_POST['password'];
    $name=$_POST['name'];
    $address=$_POST['address'];
    $phone=$_POST['phone'];
    
    $con = mysqli_connect("localhost","root","","rdbms") or die("error in connection");
    $query = mysqli_query($con,"update login set password='$password',name='$name',address='$address',phone=$phone where email ='$email'");
    if($query)
    {
        echo "<script>alert('data updated');</script>";
        header('Location:dashboard.php');
    }
    else
    {
        echo "<script>alert('error in updating');</script>";
    }
    mysqli_close($con);
}

?>