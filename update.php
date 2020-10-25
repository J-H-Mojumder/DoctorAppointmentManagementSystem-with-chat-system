<?php
	include "database.php";
?>
<?php
	$db = new database();
	$id = $_GET['id'];
	$query = "SELECT * FROM table_user WHERE ID=$id";
	$getData = $db->select($query)->fetch_assoc();

	if(isset($_POST['Submit']))
	{
		 $Name = mysqli_real_escape_string($db->link , $_POST['Name']);
		 $Email = mysqli_real_escape_string($db->link , $_POST['Email']);
		 $Skill = mysqli_real_escape_string($db->link , $_POST['Skill']);
		 $ID = mysqli_real_escape_string($db->link , $_POST['ID']);
		 if($Name == "" || $Email == "" || $Skill == "" || $ID == "")
		 {
		 	$error = "Field must not be empty !!";
		 }
		 else
		 {
		 	$query = "INSERT INTO table_user(Name,Email,Skill,ID) Values('$Name','$Email','$Skill','$ID')";
			$create = $db->insert($query);
		 }
	}
?>
<div align="center">
	<?php 
	if(isset($error))
	{
		echo $error;
	}
	?>
<form action="" method="post">
<table class = "tblOne">
	<tr>
		<td>Name</td>
		<td><input type="text" name="Name" value="<?php echo $getData['Name'] ?>"></td>
	</tr>
	<tr>
		<td>Email</td>
		<td><input type="text" name="Email" value="<?php echo $getData['Email'] ?>"></td>
	</tr>
	<tr>
		<td>ID</td>
		<td><input type="text" name="ID" value="<?php echo $getData['ID'] ?>"></td>
	</tr>
	<tr>
		<td>Skill</td>
		<td><input type="text" name="Skill" value="<?php echo $getData['Skill'] ?>"></td>
	</tr>
</table>
		<input type="submit" name="Submit" value="Submit">
		<input type="reset" value="Reset">
</form>
<a href="select.php">Go back</a>
</div>