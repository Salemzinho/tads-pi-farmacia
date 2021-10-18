<%-- 
    Document   : pesquisarProduto
    Created on : 16 de out de 2021, 15:38:59
    Author     : maris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pesquisa de Produtos</title>
    </head>
    <body>
        <h1>Consulta de Produtos</h1>
        <%-- Pq só lista o 1o produto que encontra?--%>

        <form method="POST" action='ProdutoServlet' name="frmPesquisaProduto">
            Pesquisa por Nome : <input type="text" name="busca"
                                       value="<c:out value="${produto.busca}" />" /> <br />

            <input type="submit" value="Pesquisar"/>
            <input type="hidden" name="action" value="pesquisa"/>


        </form>

    </body>
</html>
