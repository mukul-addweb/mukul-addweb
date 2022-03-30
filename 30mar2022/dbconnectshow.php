<?php

$con=mysqli_connect("localhost:3306","root","","rdbms") or die("Unable to connect to MySQL");

$query = mysqli_query($con,"SELECT * FROM bottle") or die("Unable to connect to MySQL");

echo "<table border=2><tr><td>bottle_id</td><td>bottle_name</td><td>bottle_brand</td><td>bottle_price</td><td>type</td><td>expire</td></tr>";

while ($row = mysqli_fetch_array($query))
 {
   echo "<tr>";
   echo "<td>".$row["bottle_id"]."</td>";
   echo "<td>".$row["bottle_name"]."</td>";
   echo "<td>".$row["bottle_brand"]."</td>";
   echo "<td>".$row["bottle_price"]."</td>";
   echo "<td>".$row["type"]."</td>";
   echo "<td>".$row["expire"]."</td>";
   echo "</tr>";
 }
echo "</table>";
mysqli_close($con);


?>
