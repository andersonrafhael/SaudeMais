<?php
require_once "Connection.php";
require_once "../View/HTML/Cadastro.html";

class Users extends Connection {
    private $login, $password, $name, $aux, $entry_date;

    function __set($attribute, $value) {
        $this->$attribute = $value;
    }

    function __get($attribute) {
        return $this->$attribute;      
    }

    function db_save() {
        $pdo = $this->connect();
       // $sql = $pdo->prepare("INSERT INTO users (usr_code, usr_name, usr_login, usr_password, entry_date) VALUES (2, :p_name, :p_password, :p_login, :p_date)");
        $sql = $pdo->prepare("INSERT INTO users (usr_name, usr_login, usr_password, entry_date) VALUES (?, ?, ?, str_to_date(?, '%d/%m/%Y %H:%i:%s'))");
      //  $sql->bindValue(":p_name", $this->name);
       // $sql->bindValue(":p_login", $this->login);
      //  $sql->bindValue(":p_password", $this->password);
      //  $sql->bindValue(":p_date", $this->entry_date);
        $sql->execute([$this->name,$this->login,$this->password,strval($this->entry_date)]);
        echo $this->login;     
    }

    function show_userData() {

    }
}