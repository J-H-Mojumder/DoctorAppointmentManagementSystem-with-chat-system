<html>
	<body>
		<form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">
			Name: <input type="text" name="fname">
			Password: <input type="Password" name="fpass">
  			<input type="submit">
		</form>
	</body>

	<?php
		if($_SERVER["REQUEST_METHOD"] == "POST")
		{
			$name = $_REQUEST['fname'];
			$pass = $_REQUEST['fpass'];
			if(empty($name))
			{
				echo "Enter name.<br>";
			}
			else if(empty($pass))
			{
				echo "Enter Password.<br>";
			}
			else
			{
				echo "Name inputed is ".$name."<br>"."Password is ".$pass."<br>";
			}
		}
	?>
</html>