<?php
date_default_timezone_set('Asia/Dhaka');
require_once 'dbconfig/config.php';

$stmt = $db->quote($_POST['txt']);
$sql="SELECT reply from chatbot_hints WHERE question LIKE $stmt";
$result = $db->prepare($sql);
$result->execute();
if($result->rowCount() > 0){
	$row = $result->fetch(PDO::FETCH_ASSOC);
	$content = $row['reply'];
}else{
	$content = "Sorry not be able to understand you";
}
$result->closeCursor();

$added_on=date('Y-m-d h:i:s');
$db->prepare("INSERT INTO message(message,added_on,type) VALUES('$stmt','$added_on','user')");

/*
********************
NO Need to do this
**$db->execute(); 
**$db->closeCursor();
*********************
*/

$added_on=date('Y-m-d h:i:s');
$db->prepare("INSERT INTO message(message,added_on,type) VALUES('$content','$added_on','bot')");

/*
********************
** NO Need to do this
** $db->execute();  
** $db->closeCursor();
**********************
*/

echo $content;
echo " ";
?>


<!--
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<style>

	<link href="style.css" rel="stylesheet">
</style>
<a href="#"><small><input name="invalid"  type="button" id="admin_btn" value="Invalid?"></small></a>

<body>

</body>
</html>-->
