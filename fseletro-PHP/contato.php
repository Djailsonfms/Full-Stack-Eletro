<!--inclusao de dados da pagina inclusao.php-->
<?php
include_once("inclusao.php");
 if(isset($_POST['nome']) && isset($_POST['msg'])){
            $nome = $_POST['nome']; 
            $msg = $_POST['msg'];
        
            $sql = "insert into comentarios (nome, msg) values ('$nome', '$msg')";
            $result = $conn-> query($sql); 

            header("Location: ./contato.php");
        }


        include_once("cabecalho.php");
        include_once("menu.php");
?>
<!--------------------------------------------------------------------------------------->


    <body>
        <!--Início do Menu inclusão da pagina menu.html-->
        <?php
        include_once("menu.php");
       ?>
        <!--Fim do menu-->
        <h2 style="margin-left: 20px">Fale Conosco</h2>
        <hr>
        <table border="0" width="100%" cellpadding="20" style="margin-left: 20px">
            <tr>
                <td width="50%" align="left">
                    <img src="./imagens/gmail.jpg" alt="email" width="20px">contato@fullstackeletro.com
                </td>
                <td width="50%" align="center">
                    <img src="./imagens/whatsApp.png" alt="whatsAp" width="40px">(11) 99999-9999
                </td>
            </tr>
        </table>
        
        <form method="POST" action="" style="margin-left: 20px">
        Nome:</br>
        <input type="text" name="nome" style="width:500px"></br></br>
        E-mail:</br>
        <input type="email" name="email" style="width:500px"></br></br>
        Mensagem:</br>
        <textarea type="text" name="msg" style="width:500px"></textarea></br>
        
        <input type="submit" name="submit" value="Enviar" ></a href="index.php"></br>
       </form>
    
        
         
       <?php
            include_once("rodape.php")
        ?>
    </body>
</html>