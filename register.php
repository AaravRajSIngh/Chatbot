<?php
	require 'dbconfig/config.php';
?>
<!DOCTYPE html>
<html>
<head>


<style>
body 
{
  background-image: url('https://png.pngtree.com/thumb_back/fw800/background/20190223/ourmid/pngtree-smart-robot-arm-advertising-background-backgroundrobotblue-backgrounddark-backgroundlightlight-image_68405.jpg' );
   background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
</style>


<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>	
<title>Registration Page</title>
<link rel="stylesheet" href="css/stylex.css">
</head>
<!--<body style="background-color:#bdc3c7"> -->
	
	<div id="main-wrapper">
		<center>
			<h2><strong id="regis">Sign Up</strong></h2>
			<img src="image/user_avatar.png" class="avatar"/>
		</center>
	
		<form class="myform" action="register.php" method="POST">
		<!--	<label><b>Full Name:</b></label><br>
			<input name="fullname" type="text" class="inputvalues" placeholder="Type your Full Name" required/><br>
			<label><b>Gender:</b></label>
			<input type="radio" class="radiobtns" name="gender" value="male" checked required> Male
			<input type="radio" class="radiobtns" name="gender" value="male" required> Female<br>
			<label><b>Educational Qualification</b></label>
			<select class="qualification" name="qualification">
			  <option value="BScIT">BScIT</option>
			  <option value="BMS">BMS</option>
			  <option value="BE.IT">BE.IT</option>
			  <option value="MCA">MCA</option>
			</select><br> -->

			<div class="inner_container">


 			<label><b id="run">Username:</b></label><br>
			<input name="username" type="text" id="ruser" class="inputvalues" placeholder="Username" required/><br>
			<label><b id="pass">Password:</b></label><br>
			<input name="password" type="password" id="password" class="inputvalues" placeholder="Password" required/><br>
				<label><b id="pass2">Confirm Password:</b></label><br>
			<input name="password2" type="password" id="password2" class="inputvalues" placeholder="Confirm password" required/><br>
			<label><b id="mail">Email:</b></label><br>
			<input name="email" type="email" id="email" class="inputvalues" placeholder="Email" required/><br>
			<input name="submit_btn" type="submit" id="signup_btn" value="Sign Up"/><br>
			<a href="index.php"><input type="button" id="back_btn" value="Back"/></a>
		
		</div>

		</form>
		
		<?php
			if(isset($_POST['submit_btn']))
			{
				//echo '<script type="text/javascript"> alert("Sign Up button clicked") </script>';

			#	$fullname =$_POST['fullname'];
				$username = $_POST['username'];
				$password = $_POST['password'];
				$password2 = $_POST['password2'];
				$email = $_POST['email'];
			#	$gender = $_POST['gender'];
			#	$qualification = $_POST['qualification'];

				//echo '<script type="text/javascript"> alert("User already exists.. try another username") </script>';
				//echo '<script type="text/javascript"> alert("'.$fullname.' ---'.$username.' --- '.$password.' --- '.$gender.' --- '.$qualification.'"  ) </script>';

				if($password == $password2)
				{
					$sql = "SELECT * FROM users WHERE username='$username'";
					$stmt = $db->prepare($sql);
					$stmt->execute();
					if ( $stmt->rowCount() > 0) {
						echo '<script type="text/javascript"> alert("User already exists.. try another username") </script>';
						$stmt->closeCursor();
					} else {
						$sql = "INSERT INTO users VALUES(NULL, '$username', '$email', '$password')";
						$stmt = $db->prepare($sql);
						if ( $stmt->execute() ) {
							echo '<script type="text/javascript"> alert("User Registered.. Go to login page to login") </script>';
						} else {
							echo '<script type="text/javascript"> alert("throw new PDOException($e->getMessage())") </script>';
						}
						$stmt->closeCursor();
				}
			} else{
				echo '<script type="text/javascript"> alert("Passwords does not match!") </script>';	
				}
		}  
		?>
	</div>
</body>
</html>