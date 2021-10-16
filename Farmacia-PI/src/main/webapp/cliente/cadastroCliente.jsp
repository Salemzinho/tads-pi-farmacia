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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Cliente</title>
    </head>
    <body>
        <h1>Cadastro de Cliente</h1>
        <form method="POST" action='ClienteFarmaciaServlet' name="frmCadastroCliente">
            User ID : <input type="text" readonly="readonly" name="id"
                             value="<c:out value="${cliente.id}" />" /> <br /> 
            Nome : <input
                type="text" name="nome"
                value="<c:out value="${cliente.nome}" />" /> <br /> 
            CPF : <input
                type="text" name="CPF"
                value="<c:out value="${cliente.CPF}" />" /> <br />

            Telefone : <input
                type="text" name="telCliente"
                value="<c:out value="${cliente.telCliente}" />" /> <br /> 

            Email : <input type="text" name="email"
                           value="<c:out value="${cliente.email}" />" /> <br /> 

            <input type="submit" value="Cadastrar" />
            <input type="hidden" name="action" value="incluir"/>

        </form>
    </body>
</html>
