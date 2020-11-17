<!DOCTYPE html>
<html>
<head>
	<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
	<link href='http://fonts.googleapis.com/css?family=Ropa+Sans' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="css/responsiveslides.css">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	<script src="js/responsiveslides.min.js"></script>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<title>Doctor's List</title>
</head>
<body>
	<!--start-header-->
			<div class="header">
				<div class="wrap">
				<!--start-logo-->
				<div class="logo">
					<a href="index.php" style="font-size: 30px;">Doctor Appointment<br>Management System</a>
				</div>
				<!--end-logo-->
				<!--start-top-nav-->
				<div class="top-nav">
					<ul>
						<li class="active"><a href="index.php">Home <br>. </a></li>
						<li>
							<div class="button"><span><a href="doctors_list.php">Doctor's<br>List</a></span>
						  </div>
						</li>
						<li>
							<div class="button"><span><a href="dams/user-login.php">Patients Login
								<br>& Book Appointment</a></span>
						  </div>
						</li>
						<li>
							<div class="button"><span><a href="dams/doctor/">Doctors <br> Login</a></span>
						  </div>
						</li>
						<li>
							<div class="button"><span><a href="dams/admin">Admin <br> Login</a></span>
						   </div>
						</li>
						<li><a href="contact.php">contact <br>. </a></li>
					</ul>					
				</div>
				<div class="clear"> </div>
				<!--end-top-nav-->
			</div>
			<!--end-header-->
		</div>
</body>
</html>
<?php
	include_once "include/database.php";
	$db = new database();
	$sql = "SELECT * FROM doctors ORDER BY `doctors`.`specilization` ASC";
	$result = mysqli_query($db->conn,$sql);

	//echo "Number of Doctors ".$result->num_rows."<br>";

	if($result->num_rows > 0)
	{
		echo "<table class='table table-hover table-sm table-success'>
					<tr class='bg-success'>
						<th>Doctor's Name</th>
						<th>Doctor's Specilization</th>
						<th>Doctor's Fee</th>
						<th>Doctor's Time Slot</th>
					</tr>";
		for ($i=0; $i < $result->num_rows; $i++) 
		{ 
			echo "<tr>";
			$row = $result->fetch_assoc();
			echo "<td>".$row['doctorName']."</td>";
			echo "<td>".$row['specilization']."</td>";
			echo "<td>".$row['docFees']."</td>";
			echo "<td>".$row['timeSlot']."</td></tr>";
		}
		echo "</table>";
	}
	else
	{
		echo "No Doctors Added Yet!!";
	}
 ?>