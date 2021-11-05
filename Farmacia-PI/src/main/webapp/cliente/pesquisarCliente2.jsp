<%-- 
    Document   : pesquisarCliente
    Created on : 15 de out de 2021, 21:32:29
    Author     : maris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pesquisa de Clientes</title>
        <meta charset="UTF-8">
        <title>Document</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <h1>Consulta de Cliente</h1>
        <%-- Pq só lista o 1o cliente que encontra?--%>

        <form method="POST" action='ClienteFarmaciaServlet' name="frmPesquisaCliente">
            Pesquisa por Nome : <input type="text" name="busca"
                          value="<c:out value="${cliente.busca}" />" /> <br />
            
            <input type="submit" value="Pesquisar"/>
            <input type="hidden" name="action" value="pesquisa"/>
         

        </form>

    </body>
</html>