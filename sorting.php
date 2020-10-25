<?php
	$array  = array(4,9,4,2,56,7);
	sort($array);
	echo "After sorting in ascending order<br>";
	for($i = 0 ; $i < count($array) ; $i++)
	{
		echo $array[$i]."<br>";
	}
	rsort($array);
	echo "After sorting in descending order<br>";
	for($i = 0 ; $i < count($array) ; $i++)
	{
		echo $array[$i]."<br>";
	}
?>