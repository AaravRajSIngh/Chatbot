
//before implementing this create a folder named dbconfig and paste this file in it. 


<?php
$con = mysqli_connect("localhost","root","") or die("Unable to connect");
mysqli_select_db($con,'logindb');
?>