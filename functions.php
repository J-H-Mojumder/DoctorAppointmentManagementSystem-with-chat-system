<?php
	function calculateSum($num1 = 0,$num2 = 0)//deafult argument
	{
		return $num1+$num2;
	}
	 //calling function
	$value = calculateSum(5,2);
	echo "Sum by calling function is ".$value;
	//echo $value;
?>