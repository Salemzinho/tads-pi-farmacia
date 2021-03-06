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
        <link rel="stylesheet" href="../css/main.css">

        <title>Home Farmácia</title>
    </head>
    <body>
        <div class="body-css">
            <header>
                <div class="container-css">
                    <h1>Farmácia</h1>
                    <nav>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/protegido/index.jsp">Home</a><li>
                            <li><a> Bem-vindo, ${sessionScope.usuario.nome}</a></li>
                            <li><a href="${pageContext.request.contextPath}/LoginServlet">Sair</a></li>
                        </ul>
                    </nav>
                </div>
            </header>
            <div class="card-cadastro-cliente">
                <div class="card-nome">
                    <h2>Home</h2>
                </div>
                <c:if test="${sessionScope.usuario.isAdmin()}">
                    <a href="${pageContext.request.contextPath}/protegido/cliente/ClienteFarmaciaServlet?action=listaClientes"><button class="home-button">Clientes</button></a>
                    <a href="${pageContext.request.contextPath}/protegido/produto/ProdutoServlet?action=listaProdutos"><button class="home-button">Produtos</button></a>
                    <a href="${pageContext.request.contextPath}/protegido/relatorio/RelatorioServlet?action=listaVendas"><button class="home-button">Relatório</button></a>
                    <a href="${pageContext.request.contextPath}/protegido/venda/VendaServlet?action=listaProdutos"><button class="home-button">Venda</button></a>
                </c:if>
                <c:if test="${sessionScope.usuario.isGerente()}">
                    <a href="${pageContext.request.contextPath}/protegido/relatorio/RelatorioServlet?action=listaVendas"><button class="home-button">Relatório</button></a>
                    <a href="${pageContext.request.contextPath}/protegido/venda/VendaServlet?action=listaProdutos"><button class="home-button">Venda</button></a>
                </c:if>

                <c:if test="${sessionScope.usuario.isBackOffice()}">
                    <a href="${pageContext.request.contextPath}/protegido/cliente/ClienteFarmaciaServlet?action=listaClientes"><button class="home-button">Clientes</button></a>
                    <a href="${pageContext.request.contextPath}/protegido/produto/ProdutoServlet?action=listaProdutos"><button class="home-button">Produtos</button></a>
                    <a href="${pageContext.request.contextPath}/protegido/relatorio/RelatorioServlet?action=listaVendas"><button class="home-button">Relatório</button></a>

                </c:if>
                <c:if test="${sessionScope.usuario.isVendedor()}">
                    <a href="${pageContext.request.contextPath}/protegido/venda/VendaServlet?action=listaProdutos"><button class="home-button">Venda</button></a>
                </c:if>


            </div>
        </div>
        <br>
    </body>
</html>