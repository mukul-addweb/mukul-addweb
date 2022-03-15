<?php
            error_reporting(0);
            if(!isset($_COOKIE['username']))
            {
                header('Location:taskcookies.php');
            }
            else
            {
                echo $_COOKIE['username']."<br><br>";
                
                echo "<form method=post><input type=submit value=logout name=logout></form>";
            }
            if($_POST['logout'])
            {
                setcookie("username",'',time()-60);
                header('Location:taskcookies.php');
            }
        ?>