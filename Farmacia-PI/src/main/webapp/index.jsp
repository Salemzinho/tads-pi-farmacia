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
        <!-- NAO FUNCIONA O CADASTRO
        <a href="cliente/cadastroCliente.jsp">Cadastrar</a><br/>
        <a href="cliente/pesquisarCliente.jsp">Pesquisar</a><br/>
        -->
        
        <a href="ClienteFarmaciaServlet?action=listaClientes">Clientes</a><br/>
    </body>




</html>
