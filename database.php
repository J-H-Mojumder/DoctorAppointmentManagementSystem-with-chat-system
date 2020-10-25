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

		public $link;
		public $error;
		//constructor
		public function __construct()
		{
			$this->connection();
		}

		private function connection()
		{
			$this->link = new mysqli($this->host,$this->user,$this->pass,$this->dbname);
			//to show if there is any problem in the connection
			if(!$this->link)
			{
				$this->error = "Connection failed".$this->link->connect_error;
				return false;
			}		
		}

		//Select or Read
		public function select($query)
		{
			$result = $this->link->query($query) or die ($this->link->error.__LINE__);
			//for checking if the data row is blank
			if($result-> num_rows > 0)
			{
				return $result;
			}
			else
			{
				return false;
			}
		}
		//function which will be called for inserting data
		public function insert($query)
		{
			$insert_row = $this->link->query($query) or die ($this->link->error.__LINE__);
			if($insert_row)
			{
				header("Location: select.php?msg=".urlencode('Data inserted succesfully.'));
				exit();
			}
			else
			{
				die("Error:(".$this->link->errno.")".$this->link->error);
			}
		}
	}
?>