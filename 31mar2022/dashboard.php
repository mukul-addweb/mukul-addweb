<?php
echo "HELLO"."<br><br>";

$con = mysqli_connect("localhost","root","","rdbms") or die ("error in connection");

$query = mysqli_query($con,"select * from login") or die("error in query");

echo "<table border=2><tr><td>name</td><td>address </td><td>email</td><td>password</td><td>phone</td><td>edit</td><td>delete</td></tr>";
while($row=mysqli_fetch_array($query))
{
    $user = $row["email"];
    echo "<tr>";
    echo "<td>".$row["name"]."</td>";
    echo "<td>".$row["address"]."</td>";
    echo "<td>".$user."</td>";
    echo "<td>".$row["password"]."</td>";
    echo "<td>".$row['phone']."</td>";
    echo "<td><a href=edit.php?email=$user>Edit</a></td>";
    echo "<td><a href=delete.php?Delete=$user>Delete</a></td>";
    echo "</tr>";
}
echo "</table>";
echo "<form><input type='submit' name='Add' value='Add' formaction=sign.php></form>";

mysqli_close($con);
?>