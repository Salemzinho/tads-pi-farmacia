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
        <title>Cadastrar Cliente</title>

        <!-- CSS -->
        <link rel="stylesheet" href="css/main.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    </head>
    <body>
        <header>
        <div class="container">
            <h1>Farmacia</h1>
            <nav>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/index.jsp">Home</a><li>
                    <li><a href="ProdutoServlet?action=listaProdutos">Produtos</a></li>
                    <li><a href="ClienteFarmaciaServlet?action=listaClientes">Clientes</a></li>
                    <li><a href="VendaServlet?action=listaProdutos">Vendas</a></li>
                    <li><a href="RelatorioServlet?action=listaVendas">Relatórios</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="${pageContext.request.contextPath}/LoginServlet">Sair</a></li>
                </ul>
            </nav>
        </div>
    </header>
        
    <div class="card-cadastro-cliente">
        <div class="card-nome">
            <h2>Cadastro Cliente</h2>
        </div>
        <form method="POST" action='ClienteFarmaciaServlet' name="frmCadastroCliente">
            
            <input placeholder="ID" id="id-produto" type="text" readonly="readonly" name="id" value="<c:out value="${cliente.id}" />" />
            
            
            <input placeholder="Nome" style="width: 320px;" type="text" name="nome" value="<c:out value="${cliente.nome}" />" />
            
            <input placeholder="CPF" type="text" name="CPF" value="<c:out value="${cliente.CPF}" />" />

            <input placeholder="Telefone" type="text" name="telCliente" value="<c:out value="${cliente.telCliente}" />" />

            <input placeholder="E-mail" type="text" name="email" value="<c:out value="${cliente.email}" />" />

            <input type="submit" value="Cadastrar" />
            <input type="hidden" name="action" value="incluir"/>

        </form>
    </div>
        <br>
    </body>
</html>
