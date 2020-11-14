<?php
$conn=mysqli_connect("localhost","root","","youtube");
if($conn-> connect_error){
die("connection failed:".$conn-> connect_error);
}
$id=$_GET['rn'];
$query="DELETE FROM CHATBOT_HINTS WHERE ID ='$id' ";

$data=mysqli_query($conn,$query);

if($data)
{
	echo "<script>alert('Record Deleted from database')</script>";
?>

<META HTTP-EQUIV="Refresh" CONTENT="0; URL=http://localhost:7882/qna.php">
<?php
}
else {
		# code...
	echo "<font color='red'>Failed to delete fromm db!!";
	}	
?>