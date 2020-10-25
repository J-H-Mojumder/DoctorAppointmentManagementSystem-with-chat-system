<?php
	include('conn.php');
	session_start();
	function check_input($data) {
		$data = trim($data);
		$data = stripslashes($data);
		$data = htmlspecialchars($data);
		return $data;
	}
	if (isset($_SESSION['dlogin']) == 1)
	{
		echo "already logged in";?>
		<script>
			window.location.href='user/';
		</script>
		<?php
	}
	if ($_SERVER["REQUEST_METHOD"] == "POST") {
		$username=check_input($_POST['username']);
		
		/*if (!preg_match("/^[a-zA-Z0-9_]*$/",$username)) {
			$_SESSION['msg'] = "<span style='color: red'>Username should not contain space and special characters!</span>"; 
			header('location: index.php');
		}*/

			
		$fusername=$username;
		
		$password = check_input($_POST["password"]);
		$fpassword=md5($password);
		
		$query=mysqli_query($conn,"select * from `doctors` where docEmail='".$fusername."' and password='".$fpassword."'");
		//echo "select * from `users` where email='".$fusername."' and password='".$fpassword."'";
		?>
		<!--<script type="text/javascript">
			window.alert("select * from `users` where username="+$fusername+" and password='$fpassword'");
		</script>-->
		<?php
		
			if(mysqli_num_rows($query)==0)
			{
				$_SESSION['msg'] = "<span style='color: red'>Login Failed, Invalid Input!</span>";
				header('location: index.php');
			}
		else{
			
			$row=mysqli_fetch_array($query);
			if ($row['access']==1){
				$_SESSION['login'] = $row['email'];
				$_SESSION['uName'] = $row['fullName'];
				$_SESSION['id']=$row['userid'];
				?>
				<script>
					window.alert('Login Success, Welcome Admin!');
					window.location.href='admin/';
				</script>
				<?php
			}
			else{
				$_SESSION['login'] = $row['email'];
				$_SESSION['uName'] = $row['fullName'];
				$_SESSION['id']=$row['id'];
				?>
				<script>
					window.alert("Login Success, Welcome patient !");
					window.location.href='user/';
				</script>
				<?php
			}
		}
		
	}
?>