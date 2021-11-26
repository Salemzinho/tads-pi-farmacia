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
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- CSS -->
        <link rel="stylesheet" href="css/main.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pesquisa de Produtos</title>
    </head>
    <body>
        <header>
            <div class="container">
                <h1>Farmacia</h1>
                <nav>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/index.jsp">Home</a><li>
                        <li><a href="ProdutoServlet?action=listaProdutos">Produtos</a></li>
                        <li><a href="ClienteFarmaciaServlet?action=listaClientes">Clientes</a></li>
                        <li><a href="VendaServlet?action=listaProdutos">Vendas</a></li>
                        <li><a href="RelatorioServlet?action=listaVendas">Relatórios</a></li>
                        <li><a href="login.jsp">Login</a></li>
                        <li><a href="${pageContext.request.contextPath}/LoginServlet">Sair</a></li>
                    </ul>
                </nav>
            </div>
        </header>
        <div class="card-cadastro-cliente">
            <div class="card-nome">
                <h2>Consulta Produto</h2>
            </div>
          
            <form method="POST" action='ProdutoServlet' name="frmPesquisaProduto">
                <input placeholder="Pesquisa por nome" type="text" name="busca"
                                           value="<c:out value="${produto.busca}" />" /> <br />

                <input type="submit" value="Pesquisar"/>
                <input type="hidden" name="action" value="pesquisa"/>


            </form>
        </div>
    </body>
</html>
