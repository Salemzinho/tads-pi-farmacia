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

        <title>FARMÁCIA-PI</title>
    </head>

    <body class="container">
        <div><h1>Menu:</h1></div>       
        <p><a href="ClienteFarmaciaServlet?action=listaClientes">Clientes</a></p>
        <p><a href="ProdutoServlet?action=listaProdutos">Produtos</a></p>
        <p><a href="VendaServlet?action=listaProdutos">Venda</a></p>
    </body>




</html>
