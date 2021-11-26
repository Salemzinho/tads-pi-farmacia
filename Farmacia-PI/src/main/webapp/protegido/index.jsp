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

        <title>Home Farmácia</title>
    </head>

    <header>
        <div class="container">
            <h1>Farmacia</h1>
            <nav>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/index.jsp">Home</a><li>
                    <li><a href="${pageContext.request.contextPath}">Produtos</a></li>
                    <li><a href="ClienteFarmaciaServlet?action=listaClientes">Clientes</a></li>
                    <li><a href="VendaServlet?action=listaProdutos">Vendas</a></li>
                    <li><a href="RelatorioServlet?action=listaVendas">Relatórios</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    <!--<li>Bem-vindo, ${sessionScope.usuario.nome}</li>-->
                    <li><a href="${pageContext.request.contextPath}/LoginServlet">Sair</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <div class="card-cadastro-cliente">
        <div class="card-nome">
            <h2>Home</h2>
        </div>
        <a href="../ClienteFarmaciaServlet?action=listaClientes"><button class="home-button">Clientes</button></a>
        <a href="ProdutoServlet?action=listaProdutos"><button class="home-button">Produtos</button></a>
        <a href="VendaServlet?action=listaProdutos"><button class="home-button">Venda</button></a>
        <a href="RelatorioServlet?action=listaVendas"><button class="home-button">Relatório</button></a>
    </div>
    <br>
</body>
</html>