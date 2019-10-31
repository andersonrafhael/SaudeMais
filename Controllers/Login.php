<?php

require_once "../Models/Connection.php";
require_once "../Models/Users.php";

if(isset($_POST['username'])) {
    $login = addslashes($_POST['username']);
    $password = addslashes(MD5($_POST['senha']));

    if(!empty($login) && !empty($password)) {

        $connection = new Connection; // Instancia uma conexão PDO
        $pdo = $connection->connect();
        
        if(empty($connection->msg_error)) { // Se não houve erro de conexão, continua

            $sql = $pdo->prepare("SELECT usr_cod FROM users WHERE usr_login = :p_login and usr_password = :p_password");
            $sql->bindValue(":p_login", $login);
            $sql->bindValue(":p_password", $password);
            $sql->execute();

            // Verificação
            if($sql->rowCount() > 0) {
                $data = $sql->fetch();
                session_start();
                $_SESSION['user_id'] = $data['usr_cod'];
                header("location: ../View/HTML/MainMenu.html");
                 // Validação de login concluída. Usuário logado
            }
            else {
                header("location: ../View/HTML/Login.html");
                echo "Usuário e/ou senha incorretos!"; // A validação não encontrou um usuário com essas informações
            }
        }

        else {
            header("location: ../View/HTML/Login.html");
            echo "Connection Error: $connection->msg_error";
        }
    }

    else {
        header("location: ../View/HTML/Login.html");
        echo "Preencha todos os campos antes de continuar!";
    }
}