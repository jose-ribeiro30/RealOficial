<?php 
    include ("conexao.php");

    if(isset($_GET['delete'])){
        $id = $_GET['delete'];
        $mysqli->query("DELETE FROM vaga_aprov where Id_vaga = $id") or die($mysqli->error());

        header('location:empresaPerfil.php');
    }


?>