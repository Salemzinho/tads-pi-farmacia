<%-- 
    Document   : index
    Created on : 14 de out de 2021, 15:52:52
    Author     : maris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/main.css">

        <title>FARMÁCIA-PI</title>
    </head>

    <body class="container">
        <div><h1>Menu:</h1>

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
        <!--<p><a href="ClienteFarmaciaServlet?action=listaClientes">Clientes</a></p>
        <p><a href="ProdutoServlet?action=listaProdutos">Produtos</a></p>
        <p><a href="VendaServlet?action=listaProdutos">Venda</a></p>
        <p><a href="RelatorioServlet?action=listaVendas">Relatório</a></p>-->
    </body>




</html>
