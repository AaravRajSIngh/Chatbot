<?php
require_once 'dbconfig/config.php';
?>

<!DOCTYPE html>
<html>
<head>
	<title>Update</title>
<style >
	input{
		font-size: 1vw;
	}

	table{
		color: white;
		border-radius: 19px;
		
		background:linear-gradient(blue,black,blue);
	}	
	#button 
	{
		background-color:rgba(0,0,0,0.6);
		color: white;
		height: 32px;
		width: 145px;
		border-radius: 25px;
		font-size: 16px;
	}
	body{
		background:linear-gradient(black,black);

		background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;


	}
</style>


</head>
<br><br><br><br><br><br>
<br>
<br>
<form action="" method="POST">
	<table border="0" bgcolor="black" align="center" cellspacing="50">
			<div id="main-wrapper">
				<center>
			
			<div class="imgcontainer">
			<img src="image/bot_avatar.png" class="avatar"/>
		</center>
	</div>
		<tr>
			<td>Id</td>
			<td><input type="text" value="" name="id" placeholder="Type Id here..."required></td>
			
		</tr>
		

		<tr>
			<td>Question</td>
			<td><input type="text" value="" name="question" placeholder="Type your query here..."required></td>
			
		</tr>
		<tr>
			<td>Reply</td>
			<td><input type="text" value="" name="reply" placeholder="Type your response here..."required></td>
			
		</tr>
		
		</tr>
	<tr>
	<td  colspan="3" align="center"><input type="submit" id="button" name="submit" value="Report as Invalid"/></td>
	</tr>


</table>
	</form>


</body>
</html>


<?php
if(isset($_POST['submit']))
{
	$id=$_POST['id'];
	$question=$_POST['question'];
	$reply=$_POST['reply'];

	try {
	$sql = "INSERT INTO chatbot_hints VALUES('$id','$question','$reply')";
	$stmt = $db->prepare($sql);
	if($stmt->execute()) {
		echo '<script type="text/javascript"> alert("Success!") </script>';	
	} else {
		echo '<script type="text/javascript"> alert("throw new PDOException($e->getMessage())") </script>';
	}
	$stmt->closeCursor();
	} catch (PDOException $e) {
		throw new PDOException($e->getMessage());
	}
}
?>

<!-- <META HTTP-EQUIV="Refresh" CONTENT="0; URL=http://localhost:7882/qna.php"> -->
	