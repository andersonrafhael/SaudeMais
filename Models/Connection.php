<?php

class Connection {
    private $server, $database, $db_login, $db_pass;
    public static $pdo;
    public $msg_error = "";

    function __construct() {
        $this->server = "localhost";
        $this->database = "saude+";
        $this->db_login = "root";
        $this->db_pass = "";   
    }

    function connect() {
		try {
			if(is_null(self::$pdo)) {
				self::$pdo = new PDO("mysql:host=".$this->server.";dbname=".$this->database, $this->db_login, $this->db_pass);
			}
			return self::$pdo;
        }
        catch(PDOException $e) {
            $this->msg_error = $e->getMessage();
			//echo "Connection Error: $this->msg_error";
		}
	}
}
