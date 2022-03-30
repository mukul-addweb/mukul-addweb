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
        <input type="submit" name="Insert" value ="Delete data"/>

    </form>
</body>
</html>

<?php
if(isset($_POST['Insert']))
{
    $id = $_POST['bottle_id'];
    
    $con = mysqli_connect("localhost","root","","rdbms") or die("error in connection");
    $query= mysqli_query($con,"delete from bottle where bottle_id=$id") or die ("error in query");
    if($query)
    {
        echo "<script>alert('data deleted successfully');</script>";
    }
    else
    {
        echo "<script>alert('error in deleting ');</script>";
    }

    mysqli_close($con);
}
?>