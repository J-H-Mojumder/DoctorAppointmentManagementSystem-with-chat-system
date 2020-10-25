<?php
include('include/config.php');
if(!empty($_POST["cityid"])) 
{

 $sql=mysqli_query($con,"select distinct specilization from doctors where location='".$_POST['cityid']."'");?>
 <option selected="selected">Select Specialization </option>
 <?php
 while($row=mysqli_fetch_array($sql))
 	{?>
  <option value="<?php echo htmlentities($row['specilization']); ?>"><?php echo htmlentities($row['specilization']); ?></option>
  <?php
}
}
?>

