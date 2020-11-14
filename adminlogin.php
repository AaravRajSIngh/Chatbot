<!DOCTYPE html>
<html lang="en">
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

<!--
<div id="main-wrapper">
		<center>
			<h2><strong>Admin</strong></h2>
			<div class="imgcontainer">
			<img src="imgs/dc.jpg" class="avatar"/>
		</center>
	
	</div>
-->


<body>
	<table align="center" border="1px" style="width: 800px;line-height: 20px">
		<tr>
			<th colspan="4"><h2>Chat record</h2></th>
			<h3></h3>
		
		
		<tr>
			<th align="center">id</th>
			<th align="center">message</th>
			<th align="center">Added on</th>
			<th align="center">Type</th>
		</tr>
		<?php
		$conn=mysqli_connect("localhost","root","","youtube");
		if($conn-> connect_error){
			die("connection failed:".$conn-> connect_error);
		}
		$sql = "SELECT id,message,added_on,type from message";
		$result= $conn-> query($sql);

		if($result-> num_rows >0){
			while ($row =$result ->fetch_assoc()) {
				echo "<tr><td>".$row["id"]."</td><td>".$row["message"]." </td><td> ".$row["added_on"]." </td><td> ".$row['type']."</td></tr>";
				# code...
			}
			echo "</table>";
		}
		else{
			echo "0 result";
		}
		$conn-> close();
		?>

	</table>

</body>
</html>