<%-- 
    Document   : cadastroProduto
    Created on : 16 de out de 2021, 15:31:30
    Author     : maris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Produto</title>
    </head>
    <body>
        <h1>Cadastro de Produtos</h1>
        <form method="POST" action='ProdutoServlet' name="frmCadastroProduto">
            Produto ID : <input type="text" readonly="readonly" name="id"
                                value="<c:out value="${produto.id}" />" /> <br />

            Nome : <input type="text" name="nome"
                          value="<c:out value="${produto.nome}" />" /> <br /> 

            Fabricante : <input type="text" name="fabricante" 
                            value="<c:out value="${produto.fabricante}"/>" /> <br />
            
            QTD : <input type="text" name="qtd" 
                            value="<c:out value="${produto.qtd}"/>" /> <br />
            
            Valor : <input type="text" name="valor"
                           value="<c:out value="${produto.valor}"/>" /> <br />

            <input type="submit" value="Cadastrar" />
            <input type="hidden" name="action" value="incluir"/>
        </form>
    </body>
</html>
