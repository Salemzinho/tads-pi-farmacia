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
        <title>Document</title>

        <!-- CSS -->
        <link rel="stylesheet" href="css/main.css">
        <title>Cadastrar Produto</title>
    </head>
    
    <body>
        <header>
        <div class="container">
            <h1>Farmacia</h1>
            <nav>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/index.jsp">Home</a><li>
                    <li><a href="ProdutoServlet?action=incluir">Cadastro Produtos</a></li>
                    <li><a href="ClienteFarmaciaServlet?action=incluir">Cadastro Cliente</a></li>
                    <li><a href="VendaServlet?action=listaProdutos">Vendas</a></li>
                    <li><a href="RelatorioServlet?action=listaVendas">Relatórios</a></li>
                    <li><a href="login.html">Login</a></li>
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
    </body>
</html>
