<%-- 
    Document   : index
    Created on : 14 de out de 2021, 15:52:52
    Author     : maris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>FARMÁCIA-PI</title>
    </head>
    <body>
        <jsp:forward page="/ClienteFarmaciaServlet?action=listaClientes" />
    </body>
</html>
