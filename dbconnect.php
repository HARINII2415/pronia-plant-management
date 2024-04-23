<?php

$servername="localhost";
$username = "root";
$password = "";
$mydb ="plants";

$conn = mysqli_connect($servername,$username,$password,$mydb);
if(!$conn){
die("cant reach database" .mysqli_connect_error());
}
//}else echo "reached my database successfully"
 
?>
