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
        <input type="submit" name="Insert" value ="Insert data"/>

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
    $con = mysqli_connect("localhost","root","","rdbms");
    $query = mysqli_query($con, "insert into bottle values($id,'$name','$brand',$price,'$type',$expire)") or die("error in query");
    if($query)
    {
        echo "<script>alert('data inserted successfully')</script>";
    }
    else
    {
        echo "<script>alert('something went wrong')</script>";
    }
    mysqli_close($con);
}

?>