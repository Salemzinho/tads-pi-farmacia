<%-- 
    Document   : cadastroProduto
    Created on : 16 de out de 2021, 15:31:30
    Author     : maris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cadastrar Produto</title>

        <!-- CSS -->
        <link rel="stylesheet" href="../../css/main.css">
         <!-- Boostrap CDN -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    </head>

    <body>
        <header>
            <div class="body-css">
            <div class="container-css">
                <h1>Farmacia</h1>
                <nav>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/protegido/index.jsp">Home</a><li>
                        <li><a> Bem-vindo, ${sessionScope.usuario.nome}</a></li>
                        <li><a href="${pageContext.request.contextPath}/LoginServlet">Sair</a></li>
                    </ul>
                    </ul>
                </nav>
            </div>
        </header>

        <div class="card-cadastro-cliente">
            <div class="card-nome">
                <h2>Cadastro Produto</h2>
            </div>
            <form method="POST" action='ProdutoServlet' name="frmCadastroProduto">
                <input placeholder="ID" id="id-produto" type="text" readonly="readonly" name="id" value="<c:out value="${produto.id}" />" />

                <input placeholder="Produto" style="width: 320px;" type="text" name="nome" value="<c:out value="${produto.nome}" />" />

                <input placeholder="Fabricante" type="text" name="fabricante" value="<c:out value="${produto.fabricante}"/>" />

                <input placeholder="QTD" type="text" name="qtd" value="<c:out value="${produto.qtd}"/>" />

                <input placeholder="Valor" type="text" name="valor" value="<c:out value="${produto.valor}"/>" />

                <input type="submit" value="Cadastrar" />
                <input type="hidden" name="action" value="incluir"/>
            </form>
        </div>
        <br>
</div>
    </body>
</html>
