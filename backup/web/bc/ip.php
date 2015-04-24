<?php
class Ip {

	private $host,
		$username,
		$pass,
		$db,
		$tableLog,
		$tableIP,
		$ip;	

	public function __construct($host, $username, $pass, $db, $tableLog, $tableIP){
		date_default_timezone_set("Asia/Jakarta");
		$this->host = $host;
		$this->username = $username;
		$this->pass = $pass;
		$this->db = $db;
		$this->tableLog = $tableLog;
		$this->tableIP = $tableIP; 
		$this->ip = $_SERVER['REMOTE_ADDR'];
		$this->connect();
	}

	private function insertIP($connect){
		$date = date('m/d/Y h:i:s a', time());
		$connect->query("INSERT INTO $this->tableLog (ip, date) VALUE('$this->ip', '$date');");
	
	}
	
	private function selectIP($connect){
		$result = $connect->query("select * from  $this->tableIP where ip = '$this->ip';") or die("error selectip1");
	
		if($result->rowCount() == 0){
			$connect->query("INSERT INTO $this->tableIP (ip) VALUE('$this->ip')") or die("error selectip2");
		}
		else;
	}
	
	public function showTable($tableName){
		$table = array();
		$connect = $this->connect(true);
		$con = $connect->query("SELECT * FROM $tableName;") or die("error showtable");
		while($row = $con->fetch()){
			$table[] = $row;
		}
		return $table;
	}

	private function connect($dev = false){
	 	$dsn = "mysql:host=$this->host;dbname=$this->db";
		$connect = new PDO($dsn, $this->username, $this->pass) or die('error connect');
	
		$connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION) or die("error db");
		if($dev){
			return $connect;
		}
		else {
			$this->insertIP($connect);
			$this->selectIP($connect);
		}
	}
}


//$ip = new IP("localhost", "u10321rqs_iplog", "Nyitnyit2", "u10321rqs_iplog", "logip", "ip") or die("error get class");


