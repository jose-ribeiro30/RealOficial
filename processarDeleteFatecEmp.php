<?php 
    include("conexao.php");

    if(isset($_GET['delete'])){
        $id = $_GET['delete'];
        $mysqli->query("DELETE FROM empresa_cad where ID_empresa = $id") or die($mysqli->error());

        die("<script> alert('Deletado com sucesso!');
        location.href='fatecPerfil.php'; </script>");

    }


?>