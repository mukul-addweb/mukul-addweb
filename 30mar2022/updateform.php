<html>
    <body>
<form method="post">
        ID: <input type="number" name="id1"/>
        <input type="submit" name="submit">
</form>
</body>
</html>
<?php 
if(isset($_POST['submit'])){
$id=$_POST['id1'];

$con = mysqli_connect("localhost","root","","rdbms") or die ("error in connection");
$query = mysqli_query($con,"select * from bottle where bottle_id=$id") or die("error in query");
while($row=mysqli_fetch_array($query))
{
    
    $id = $row["bottle_id"];
    $name = $row["bottle_name"];
    $brand = $row["bottle_brand"];
    $price = $row["bottle_price"];
    $type = $row["type"];
    $expire = $row["expire"];
    
}
mysqli_close($con);
}
?>

<!DOCTYPE html>
<html>
<head>
</head>
<body>
    <form method="post">
    ID: <input type="number" name="bottle_id" value="<?php echo $id ?>"/><br/>
        Name: <input type="text" name = "bottle_name" value="<?php echo $name ?>" /></br>
        brand: <input type="text" name = "bottle_brand" value="<?php echo $brand ?>" /></br>
        price: <input type="text" name = "bottle_price" value="<?php echo $price ?>" /></br>
        type: <input type="text" name="type" value="<?php echo $type ?>" /></br>
        expire: <input type="text" name="expire" value="<?php echo $expire ?>" /></br>
                 <input type="submit" name="update" value ="Update data"/>

    </form>
</body>
</html>

<?php

if(isset($_POST['update'])){
    $id=$_POST['bottle_id'];
    $name=$_POST['bottle_name'];
    $brand=$_POST['bottle_brand'];
    $price=$_POST['bottle_price'];
    $type=$_POST['type'];
    $expire=$_POST['expire'];
    $con = mysqli_connect("localhost","root","","rdbms") or die("error in connection");
    $abc="update bottle set bottle_name='$name',bottle_brand='$brand',bottle_price=$price,type='$type',expire=$expire where bottle_id=$id";


    $query = mysqli_query($con,$abc);
    if($query)
    {
        echo "<script>alert('data updated');</script>";
    }
    else
    {
        echo "<script>alert('error in updating');</script>";
    }
    mysqli_close($con);
}

?>