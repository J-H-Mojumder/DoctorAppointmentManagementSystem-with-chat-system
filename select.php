<?php
	//header
	include "database.php";
?>
<?php
	//creating new object of class database
	$db = new database();
	$query = "SELECT * FROM table_user";
	$read = $db->select($query);
?>
<div align="center">
	<?php 
	if(isset($_GET['msg']))
	{
		echo $_GET['msg'];
	}
	?>
<table class = "tblOne", border="2">
	<tr>
		<!--for printing a table-->
		<th width="20%">ID</th>
		<th width="20%">Name</th>
		<th width="20%">Email</th>
		<th width="20%">Skill</th>
		<th width="20%">Action</th>
	</tr>
<?php if($read) { ?>
<?php while($row = $read->fetch_assoc()) { ?>
	<tr>
		<!--for printing a row with data from database-->
		<td width="20%", align="center"><?php echo $row['ID']?></td>
		<td width="20%", align="center"><?php echo $row['Name']?></td>
		<td width="20%", align="center"><?php echo $row['Email']?></td>
		<td width="20%", align="center"><?php echo $row['Skill']?></td>
		<td width="20%", align="center"> <a href="update.php?id=<?php echo urlencode($row['id']); ?>">Edit</a> </td>
	</tr>

<?php } ?>
<?php } else { ?>
<p>Data is not available</p>
<?php } ?>
	
</table>
<!--for printing a link to create data page-->
<a href="create.php">Create data</a>
</div>