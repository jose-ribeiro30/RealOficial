<?php 
    include ("conexao.php");
    
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);

    $nome = $_POST['nome'];
    $email = $_POST['email'];
    $cpf = $_POST['cpf'];
    $rg = $_POST['rg'];
    $data = $_POST['data'];
    $tel = $_POST['telefone'];
    $curso = $_POST['curso'];
    $senha = $_POST['senha'];
   
    $data = date('Y-m-d',strtotime($data));

    


    
    if(!empty($nome && $email && $cpf && $rg && $tel && $curso && $data && $curso && $senha)){
    
    $mysqli->query("INSERT INTO `aluno`(`Nome_completo`,`RG`,`data_nasc`,`Telefone`,`Email`,`CPF`,`Curso`,`Senha`) 
    VALUES ('$nome','$rg','$data','$tel','$email','$cpf','$curso','$senha')") or die($mysqli->error);
   

    die("<script> alert('Cadastro realizado com sucesso!');
    location.href='estudanteLogar.php'; </script>");

    }

    


?>