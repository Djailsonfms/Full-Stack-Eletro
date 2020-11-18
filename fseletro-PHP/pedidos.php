<!--inclusao de dados da pagina inclusao.php-->
<?php
    include_once("inclusao.php");
    include_once("cabecalho.php");
    include_once("menu.php");

?>
<!--------------------------------------------------------------------------------------->


<body>
    <h1 style="margin-left: 20px">Pedidos</h1>
<form style="margin-left: 20px" action="enviarped.php" method="POST">
    <lavel for="nome">Nome:</label></br>
    <input type="tex" name="nome" id="nome"></br>

    <lavel for="endereco">Endereço:</label></br>
    <input type="tex" name="endereco" id="endereco"></br>

    <lavel for="telefone">Telefone:</label></br>
    <input type="tex" name="telefone" id="telefone"></br>

    <lavel for="nome_produto">Nome do Produto:</label></br>
    <input type="tex" name="nome_produto" id="nome_produto"></br>

    <lavel for="vUnit">Valor Unitario:</label></br>
    <input type="tex" name="vUnit" id="vUnit"></br>

    <lavel for="qtd">Quantidade:</label></br>
    <input type="tex" name="qtd" id="qtd"></br>

    <lavel for="vTot">Valor Total:</label></br>
    <input type="tex" name="vTot" id="vTot"></br>

    <button type="submit" name="cadastrar">Cadastrar</button>
</form>

    <?php
        include_once("rodape.php")
    ?>
</body>
</html>
