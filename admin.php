<?php
	session_start();
	require_once 'dbconfig/config.php';
?>
<!DOCTYPE html>
<html>
<head>


<title>Login as Admin</title>
<link rel="stylesheet" href="css/stylex.css">
<style>
body 
{
  background-image: url('https://png.pngtree.com/thumb_back/fw800/background/20190223/ourmid/pngtree-smart-robot-arm-advertising-background-backgroundrobotblue-backgrounddark-backgroundlightlight-image_68405.jpg' );
   background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
</style>



</head>

<br>
<br>
<br>
<br>
<br>
<br>


<!-- <body style="background-color:#bdc3c7"> -->
	
	<div id="main-wrapper">
		<center>
			<div class="imgcontainer">
			<img src="image/admin.png" class="avatar"/>
		</center>
	
		<form class="myform" action="adminpage.php" method="post">

			<div class="inner_container">

			<label><b id="adminp">Password:</b></label><br>
			<input name="password" type="password" class="inputvalues" id="adminpass" placeholder="Type your password" required/><br>
			
		

						<a href="adminlogin.php"><input  type="button" id="admin_btn" value="LogIn"/></a><br>
			<a href="index.php"><input type="button" id="back_btn" value="Back"/></a>

		
			
		
		</div>

		</form>
		
	</div>
</body>
</html>