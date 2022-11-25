<?php 
    include("conexao.php");
    session_start();

    $cnpj = $_SESSION['CNPJ'];
    $email = $_SESSION['email'];
    $senha = $_SESSION['senha'];



    $razao_social = $_POST['razao_social'];
        $insc_estad = $_POST['insc_estad'];
        $ramo = $_POST['ramo_ativ'];
        $cep = $_POST['CEP'];
        $logra = $_POST['logradouro'];
        $bairro = $_POST['bairro'];
        $num = $_POST['num'];
        $comp = $_POST['complemento'];

        
        if(!empty($cnpj && $email && $senha && $razao_social && $insc_estad && $ramo && $cep && $logra && $num )){

        $mysqli->query("INSERT INTO `empresa_cad`(`Razao_social`, `Email`, `CNPJ`, `Senha`, `Insc_est`, `Ramo_ativ`, `CEP`, `Logradouro`, `Bairro`, `Num`, `Complemento`) 
        VALUES ('$razao_social','$email','$cnpj','$senha','$insc_estad','$ramo','$cep','$logra','$bairro','$num','$comp')")or die($mysqli->error());
        

        die("<script> alert('Cadastro realizado com sucesso! Aguarde a aprovação de seu cadastro para realizar seu login!'); 
        location.href='index.html'; </script>");
        
        
        
    }


?>