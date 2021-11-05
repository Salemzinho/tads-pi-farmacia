<%-- 
    Document   : cadastroCliente
    Created on : 15 de out de 2021, 17:17:40
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
        <link rel="stylesheet" href="main.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Cliente</title>
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
        <div class="card-nome">
            <h2>Cadastro Produto</h2>
        </div>
        <form method="POST" action='ClienteFarmaciaServlet' name="frmCadastroCliente">
            <input id="id-produto" type="text" readonly="readonly" name="id" value="<c:out value="${cliente.id}" />" />
            
            <input style="width: 320px;" type="text" name="nome" value="<c:out value="${cliente.nome}" />" />
            
            <input type="text" name="CPF" value="<c:out value="${cliente.CPF}" />" />

            <input type="text" name="telCliente" value="<c:out value="${cliente.telCliente}" />" />

            <input type="text" name="email" value="<c:out value="${cliente.email}" />" />

            <input type="submit" value="Cadastrar" />
            <input type="hidden" name="action" value="incluir"/>

        </form>
    </div>
        <br>
    </body>
</html>
