
<?php

$user = $_REQUEST['Delete'];

$con = mysqli_connect("localhost","root","","rdbms") or die("error in connection");
$query= mysqli_query($con,"delete from login where email='$user'") or die ("error in query");
if($query)
{
    echo "<script>alert('data deleted successfully');</script>";
    header('Location:dashboard.php');
}
else
{
    echo "<script>alert('error in deleting ');</script>";
}

mysqli_close($con);

?>