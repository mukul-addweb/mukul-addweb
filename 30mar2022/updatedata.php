<!DOCTYPE html>
<html>
<head>

</head>
<body>
    <form method="post">
        ID: <input type="number" name="bottle_id" /><br/>
        Name: <input type="text" name = "bottle_name"/></br>
        brand: <input type="text" name = "bottle_brand"/></br>
        price: <input type="text" name = "bottle_price"/></br>
        type: <input type="text" name="type" /></br>
        expire: <input type="text" name="expire"/></br>
        <input type="submit" name="Insert" value ="Update data"/>

    </form>
</body>
</html>

<?php
if(isset($_POST['Insert']))
{
    $id = $_POST['bottle_id'];
    $name = $_POST['bottle_name'];
    $brand = $_POST['bottle_brand'];
    $price = $_POST['bottle_price'];
    $type = $_POST['type'];
    $expire = $_POST['expire'];
    $con = mysqli_connect("localhost","root","","rdbms") or die("error in connection");
    $query= mysqli_query($con,"update bottle set bottle_name='$name', bottle_brand='$brand', bottle_price='$price', type=$type, expire='$expire' where brand_id=$id") or die ("error in query");
    if($query)
    {
        echo "<script>alert('data updated successfully');</script>";
    }
    else
    {
        echo "<script>alert('error in updating ');</script>";
    }

    mysqli_close($con);
}
?>