<?php

$id=$_GET['rn'];
 try {
 	$sql="DELETE FROM CHATBOT_HINTS WHERE ID ='$id'";
 	$stmt = $db->prepare($sql);
 	$stmt->bindValue('ID', $id, PDO::PARAM_INT);
 	if ( $stmt->execute() ) {
 		echo "<script>alert('Record Deleted from database')</script>";
 	} else {
 		echo "<font color='red'>Failed to delete fromm db!!";
 	}

 } catch (PDOException $e) {
 	throw new PDOException($e->getMessage());
 }

?>

<META HTTP-EQUIV="Refresh" CONTENT="0; URL=http://localhost:7882/qna.php">
