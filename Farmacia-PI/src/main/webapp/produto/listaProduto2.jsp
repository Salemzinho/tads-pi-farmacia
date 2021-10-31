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
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Produtos</title>
        
        <!-- CSS -->
        <link rel="stylesheet" href="main.css">

    </head>
    <body>
    <header>
        <div class="container">
            <h1>Farmacia</h1>
            <nav>
                <ul>
                    <li><a href="cadastro-produto.html">Cadastro Produtos</a></li>
                    <li><a href="cadastro-cliente.html">Cadastro Cliente</a></li>
                    <li><a href="vendas.html">Vendas</a></li>
                    <li><a href="relatorios.html">Relatórios</a></li>
                    <li><a href="login.html">Login</a></li>
                </ul>
            </nav>
        </div>
    </header>
        <div class="card-cadastro-cliente">
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
        
    </body>
    <a href="${pageContext.request.contextPath}/index.jsp">Voltar para Index</a>
</html>