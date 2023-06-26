<?php
	require_once 'dbconfig/config.php';
		$rn=$_GET['rn'];
		$ques=$_GET['ques'];
		$rep=$_GET['rep'];
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
		width: 125px;
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

<form action="" method="GET">
	<table border="0" bgcolor="black" align="center" cellspacing="50">
			<div id="main-wrapper">
		<center>
			
			<div class="imgcontainer">
			<img src="image/bot_avatar.png" class="avatar"/>
		</center>
	</div>
	
		<tr>
			<td>Id</td>
			<td><input type="text" value="<?php echo "$rn" ?>" name="id" required></td>

		</tr>
		<tr>
			<td>Question</td>
			<td><input type="text" value="<?php echo "$ques" ?>" name="question" required></td>
			
		</tr>
		
		<tr>
			<td>Reply</td>
			<td><input type="text" value="<?php echo "$rep" ?>" name="reply" required></td>
			
		</tr>
	<tr>
	<td  colspan="2" align="center"><input type="submit" id=button name="submit" value="Update Details"/></td>
	</tr>


</table>
	</form>


</body>
</html>


<?php
if($_GET['submit'])
{
	$id=$_GET['id'];
	$question=$_GET['question'];
	$reply=$_GET['reply'];

$sql = "UPDATE CHATBOT_HINTS SET id='$id',question='$question',reply='$reply' WHERE id='$id' ";
$stmt = $db->prepare($sql);
if ( $stmt->execute() ) {
	echo "<script>alert('Record Updated')</script>";
}
?>

<META HTTP-EQUIV="Refresh" CONTENT="0; URL=http://localhost:7882/qna.php">
<?php
else
{
	echo "Failed To Update Record";
}
}
?>
