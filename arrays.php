<?php
	$names = array ("Ross","Chandler","Joey","Rachel","Monica","Pheebs");
	for($x = 0 ; $x < count($names) ; $x++)
	{
		echo "$names[$x]"."<br>";
	}
	echo "<br>";
	echo "Number of names is ";
	echo count($names).".<br>";
	
	$age = array("Ross"=>"30", "Joey"=>"31", "Monica"=>"33");
	$name = array("30"=>"Ross", "31"=>"Joey", "33"=>"Monica");
	echo $name['30']." is " . $age['Ross'] . " years old.";		
?>