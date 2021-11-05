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
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Document</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Clientes</title>
        
        <!-- CSS -->
        <link rel="stylesheet" href="css/main.css">
    </head>
    <body>
     <header>
        <div class="container">
            <h1>Farmacia</h1>
            <nav>
                <ul>
                    <li><a href="ProdutoServlet?action=incluir">Cadastro Produtos</a></li>
                    <li><a href="ClienteFarmaciaServlet?action=incluir">Cadastro Cliente</a></li>
                    <li><a href="VendaServlet?action=listaProdutos">Vendas</a></li>
                    <li><a href="RelatorioServlet?action=listaVendas">Relatórios</a></li>
                    <li><a href="login.html">Login</a></li>
                </ul>
            </nav>
        </div>
    </header>
        <div class="card-cadastro-cliente">
        <table class="table">
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

            <!--<p><a href="ClienteFarmaciaServlet?action=incluir">Cadastrar Cliente</a></p>-->
        <p><a href="ClienteFarmaciaServlet?action=pesquisar">Pesquisar Cliente</a></p>
        <!-- Aqui entra o pesquisar cliente que direciona pra pagina como no cadastro. 
        na pagnia pesquisar seguir o mesmo fluxo do cadastro-->

    </body>
    <a href="${pageContext.request.contextPath}/index.jsp">Voltar para Index</a>
</html>
