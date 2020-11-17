<?php
//header to include the page named "config.php"
include "config.php";
?>
<?php
Class Database
	{
		public $host = DB_HOST;
		public $user = DB_USER;
		public $pass = DB_PASS;
		public $dbname = DB_NAME;

		//public $conn = mysqli_connect($this->host,$$this->user,$$this->pass,$$this->dbname);

		public function __construct()
		{
			$this->connection();
		}

		private function connection()
		{
			$this->conn = new mysqli($this->host,$this->user,$this->pass,$this->dbname);

			//to show if there is any problem in the connection
			if(!$this->conn)
			{
				$this->error = "Connection failed".$this->link->connect_error;
				return false;
			}		
		}
	}
?>