<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>StarJobs - Empresa Cadastro</title>

    <link href="style.css" rel="stylesheet">

    <link href="cadastroModal.css" rel="stylesheet">
</head>
<body style="margin: 0">

    <script src="navbar.js "></script>

    <div style="height: 100px;">

        <br>
        <br>
    
        <a href="index.html" class="botao-cinza" style="font-size: 1.5em; margin-left: 100px;">Voltar</a>

    </div>

    <div style="height:950px;">
    

        <div class="cadastroEmpresa2">

            <h3 style="color: #000000; text-align: center;font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">PREENCHA ABAIXO PARA FINALIZAR O CADASTRO NO SITE</h3>
            
            <h4 style="color: #000000; text-align: center;font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">EMPRESA</h4>

            <form action="processarCadastroEmp.php" method="POST">

            <label style="color: #000000;font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; margin-left: 5%">Razão Social:</label>
            
            <br>

            <input name="razao_social" type="text" class="input-text" style="margin: 5px 3%;width: 90%;" required>

            <br>
            <br>

            <label style="color: #000000;font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; margin-left: 5%">Inscrição Estadual:</label>

            <br>
            <input name="insc_estad" type="text" class="input-text" style="margin: 5px 0 0 3%;width: 90%;" required>

            <br> 
            <br>

            <label style="color: #000000;font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; margin-left: 5%;">Ramo de atividade:</label>
            
            <br>
            <input name="ramo_ativ" type="text" class="input-text" style="margin: 5px 0 0 3%;width: 90%;" required>
            <br>

            <br>
            <br>

            <label style="color: #000000;font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; margin-left: 5%">CEP:</label>
            <label style="color: #000000;font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; margin-left: 47%;">Logradouro:</label>

            <br>

            <input name="CEP" type="text" class="input-text" style="margin: 5px 0 0 3%;width: 42%;" required>
            <input name="logradouro" type="text" class="input-text" style="margin: 5px 0 0 3%;width: 45%;" required>

            <br>
            <br>

        
            <label style="color: #000000;font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; margin-left: 5%;">Bairro:</label>
            <br>
            <input name="bairro" type="text" class="input-text" style="margin: 5px 0 0 3%;width: 90%;" required>
            
            <br>
            <br>
            
            <label style="color: #000000;font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; margin-left: 5%;">Número:</label>
            <label style="color: #000000;font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; margin-left: 45%;">Complemento:</label>
            
            <br>
            <input name="num" type="text" class="input-text" style="margin: 5px 0 0 3%;width: 42%;" required>
            <input name="complemento" type="text" class="input-text" style="margin: 5px 0 0 3%;width: 45%;">
            
            <br>

            
            

            <br>
            <br>
            <br>

            <button  name="enviar" class="botao-verde" style="font-size: 1.5em; margin: 0 40%">FINALIZAR</button>

            </form>

        </div>

    </div>

    <?php
        
        session_start();

        $_SESSION['CNPJ'] = $_POST['CNPJ'];
        $_SESSION['email'] = $_POST['email'];
        $_SESSION['senha'] = $_POST['senha'];
        
    
    ?>


    <script src="footer.js"></script>
    
</body>

<script src="cadastro.js"></script>
    
</html>
