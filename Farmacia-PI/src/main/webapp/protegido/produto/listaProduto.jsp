<%-- 
    Document   : listaProduto
    Created on : 16 de out de 2021, 15:23:54
    Author     : maris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Produtos</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


        <!-- CSS -->
        <link rel="stylesheet" href="../../css/main.css">

        <!-- Boostrap CDN -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="body-css">
        <header>
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
        <div style="width: 600px;" class="card-cadastro-cliente">
            <table class="table">
                <thead>
                    <tr>
                        <th>ID Produto</th>
                        <th>Nome</th>
                        <th>Fabricante</th>
                        <th>QTD</th>
                        <th>Valor</th>
                        <th colspan=2>Action</th>
                    </tr>
                </thead>

                <tbody>
                    <c:forEach items="${produtos}" var="produto">
                        <tr>
                            <td><c:out value="${produto.id}"/></td>
                            <td><c:out value="${produto.nome}"/></td>
                            <td><c:out value="${produto.fabricante}"/></td>
                            <td><c:out value="${produto.qtd}"/></td>
                            <td><c:out value="${produto.valor}"/></td>

                            <td><a href="ProdutoServlet?action=alterar&id=<c:out value="${produto.id}"/>">Alterar</a></td>
                            <td><a href="ProdutoServlet?action=excluir&id=<c:out value="${produto.id}"/>">Excluir</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

            <p><a href="ProdutoServlet?action=incluir">Cadastrar Produto</a></p>
            <p><a href="ProdutoServlet?action=pesquisar">Pesquisar Produto</a></p>
        </div>
        </div>
    </body>
    <!--<a href="${pageContext.request.contextPath}/index.jsp">Voltar para Index</a>-->
</html>
