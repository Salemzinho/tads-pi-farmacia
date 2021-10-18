<%-- 
    Document   : listaProduto
    Created on : 16 de out de 2021, 15:23:54
    Author     : maris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Produtos</title>
    </head>
    <body>
        <h1>Produtos em estoque</h1>

        <table class="table">
            <thead>
                <tr>
                    <th>ID Produto</th>
                    <th>Nome</th>
                    <th>Fabricante</th>
                    <th>QTD</th>
                    <th>Valor</th>
                    <th colspan=2>Action</th>
                </tr>
            </thead>

            <tbody>
                <c:forEach items="${produtos}" var="produto">
                    <tr>
                        <td><c:out value="${produto.id}"/></td>
                        <td><c:out value="${produto.nome}"/></td>
                        <td><c:out value="${produto.fabricante}"/></td>
                        <td><c:out value="${produto.qtd}"/></td>
                        <td><c:out value="${produto.valor}"/></td>

                        <td><a href="ProdutoServlet?action=alterar&id=<c:out value="${produto.id}"/>">Alterar</a></td>
                        <td><a href="ProdutoServlet?action=excluir&id=<c:out value="${produto.id}"/>">Excluir</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        
        <p><a href="ProdutoServlet?action=incluir">Cadastrar Produto</a></p>
        <p><a href="ProdutoServlet?action=pesquisar">Pesquisar Produto</a></p>
        
    </body>
    <a href="${pageContext.request.contextPath}/index.jsp">Voltar para Index</a>
</html>
