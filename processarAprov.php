<?php 
    include("conexao.php");
   


    $id = number_format($_GET['aprov']);
    $idempresa = number_format($_GET['empresa']);

    


    
    $result = $mysqli->query("SELECT * from vagas where ID_vaga = $id");

    while ($row = $result->fetch_assoc()){

    $id_vaga = $row['ID_vaga'];
    $id_empresa = $row['ID_empresa'];    
    $conteudo = $row["Conteudo"];


    

    $mysqli->query("INSERT INTO `vaga_aprov` (`ID_vaga`,`ID_empresa`,`Conteudo`) VALUES (
    $id_vaga, $id_empresa ,'$conteudo')")or die ($mysqli->error);

    $mysqli->query("DELETE FROM vagas WHERE ID_vaga = $id_vaga")or die($mysqli->error());

    die("<script> alert('Aprovado com sucesso!');
                location.href:'fatecPerfil.php'; </script>");

 
    }
?>