<!DOCTYPE html>
<html lang="en">
<body>
<head>
	<meta charset="utf-8"> 
	<title>Admin Portal</title>
	<link rel="stylesheet" href="navbar.css">
	<!--<link href="https://fonts.googleapis.com/css?family=Alfa+Slab+One|Open+Sans" rel="stylesheet">-->
</head>
<header>
	<icon>
		
	</icon>
	<h1>AR<span>ESA<span>BOT</span></span></h1>
	<nav>
		<ul>
			
			<li><a href="adminlogin.php">Chats</a></li>
			<li><a href="qna.php">Dataset</a></li>
			<li><a href="invalid.php">Invalid</a></li>
			<li><a href="index.php">Sign Out</a></li>
		</ul>
	</nav>
</header>
<body>
	<table align="center" border="1px" style="width: 800px;line-height: 20px">
		<tr>
			<th colspan="2"><h2>Invalid</h2></th>
			<h3></h3>
		
		
		<tr>
			<th align="center">id</th>
			<th align="center">Invalid query/response</th>
			</tr>
		<?php
		require_once 'dbconfig/config.php';
		try {
		$sql = "SELECT id,messages FROM invalid";
		$stmt = $db->prepare($sql);
		$stmt->execute();
		if($stmt->rowCount() > 0){
			while ($row =$stmt->fetch(PDO::FETCH_ASSOC)) {
				echo "<tr><td>".$row["id"]."</td><td>".$row["messages"]."</td></tr>";
			}
			echo "</table>";
		}
		else{
			echo "0 result";
		}
		$stmt->closeCursor();
	} catch (PDOException $e) {
		throw new Exception($e->getMessage());
		
	}
?>

	</table>

</body>
</html>
</html>
