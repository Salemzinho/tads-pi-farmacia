<%-- 
    Document   : CadastroCliente
    Created on : 15 de out de 2021, 16:28:47
    Author     : maris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="${pageContext.request.contextPath}/lib/jquery-3.6.0.min.js" type="text/javascript"></script>
        <title>Lista de Clientes</title>
    </head>
    <body>
        
        <h1>Clientes Encontrados</h1>

        <table  class="table">
            <thead>
                <tr>
                    <th>ID Cliente</th>
                    <th>Nome</th>
                    <th>CPF</th>
                    <th>Telefone</th>
                    <th>E-mail</th>
                    <th colspan=2>Action</th>
                </tr>
            </thead>

            <tbody>
                <c:forEach items="${clientes}" var="cliente">
                    <tr>
                        <td><c:out value="${cliente.id}"/></td>
                        <td><c:out value="${cliente.nome}"/></td>
                        <td><c:out value="${cliente.CPF}"/></td>
                        <td><c:out value="${cliente.telCliente}"/></td>
                        <td><c:out value="${cliente.email}"/></td>

                        <td><a href="ClienteFarmaciaServlet?action=alterar&id=<c:out value="${cliente.id}"/>">Alterar</a></td>
                        <td><a href="ClienteFarmaciaServlet?action=excluir&id=<c:out value="${cliente.id}"/>">Excluir</a></td>
                    </tr>
                </c:forEach>

            </tbody>
        </table>

        <p><a href="ClienteFarmaciaServlet?action=incluir">Cadastrar Cliente</a></p>
        <p><a href="ClienteFarmaciaServlet?action=pesquisar">Pesquisar Cliente</a></p>
        <!-- Aqui entra o pesquisar cliente que direciona pra pagina como no cadastro. 
        na pagnia pesquisar seguir o mesmo fluxo do cadastro-->

    </body>
</html>
