<?php

$login = $_POST['login'];
$password = MD5($_POST['senha']);

require_once "../Models/Connection.php";

$connection = new Connection; // Instancia uma conexão PDO
$pdo = $connection->connect();

$sql = $pdo->prepare("SELECT usr_cod FROM users WHERE usr_login = :p_login and usr_password = :p_password");
$sql->bindValue(":p_login", $login);
$sql->bindValue(":p_password", $password);
$sql->execute();

// Verificação
if($sql->rowCount() > 0) {
    $data = $sql->fetch();
    session_start();
    $_SESSION['user_id'] = $data['usr_cod'];
    return true; // Validação de login concluída. Usuário logado
}
else {
    return false; // A validação não encontrou um usuário com essas informações
}