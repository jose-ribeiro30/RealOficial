<?php 
    include("conexao.php");

    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);


    $id = number_format($_GET['aprov']);

    $result = $mysqli->query("SELECT * FROM empresa_cad WHERE ID_empresa = $id");

    while ($row = $result->fetch_assoc()){

    $cnpj = $row['CNPJ'];
    $email = $row['Email'];
    $senha = $row['Senha'];
    $razao_social = $row['Razao_social'];
    $insc_estad = $row['Insc_est'];
    $ramo = $row['Ramo_ativ'];
    $cep = $row['CEP'];
    $logra = $row['Logradouro'];
    $bairro = $row['Bairro'];
    $num = $row['Num'];
    $comp = $row['Complemento'];

    $mysqli->query("INSERT INTO `empresa`( `Razao_social`, `Email`, `CNPJ`, `Senha`, `Insc_est`, `Ramo_ativ`, `CEP`, `Logradouro`, `Bairro`, `Num`, `Complemento`) 
    VALUES ('$razao_social','$email','$cnpj','$senha','$insc_estad','$ramo','$cep','$logra','$bairro','$num','$comp')") or die($mysqli->error());

    $mysqli->query("DELETE FROM empresa_cad WHERE ID_empresa = $id") or die($mysqli->error());

    


    die("<script> alert('Aprovado com sucesso!');
    location.href='fatecPerfil.php'; </script>");

    }
?>