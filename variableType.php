<?php
	$a = "My name is Masum";
	$b = 35;
	$c = 1.5;
	$d = true;
	$e = array("Masum","Noman");
	$f = null;
	class Car 
	{
    	function Car() 
    		{
        		$this->model = "VW";
    		}
	}

	$g = new Car();
	echo "Type of variable a is ";var_dump($a);echo "<br>";
	echo "Type of variable b is ";var_dump($b);echo "<br>";
	echo "Type of variable c is ";var_dump($c);echo "<br>";
	echo "Type of variable d is ";var_dump($d);echo "<br>";
	echo "Type of variable e is ";var_dump($e);echo "<br>";
	echo "Type of variable f is ";var_dump($f);echo "<br>";
	echo "Type of variable g is ";var_dump($g);echo "<br>";
?>