<%-- 
    Document   : listaVenda
    Created on : 4 de nov. de 2021, 20:00:25
    Author     : vinis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Relatorio</title>
        
        <!-- CSS -->
        <style>
            h1 {
              color: maroon;
              margin-left: 40px;
            }
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
            }
            
        </style>

    </head>
    <body>
    <header>
        <div class="container">
            <h1>Farmacia</h1>
            <nav>
                <ul>
                    <li><a href="cadastro-produto.html">Cadastro Produtos</a></li>
                    <li><a href="cadastro-cliente.html">Cadastro Cliente</a></li> 
                    <li><a href="vendas.html">Vendas</a></li>
                    <li><a href="relatorios.html">Relatórios</a></li>
                    <li><a href="login.html">Login</a></li>
                </ul>
            </nav>
        </div>
    </header>
        <div class="card-cadastro-cliente">
        <table class="table" style="border: 1px solid black; border-collapse: collapse;">
            <thead>
                <tr style="justify-content: space-between; border: 1px solid black; border-collapse: collapse;">
                    <th>ID Venda</th>
                    <th>Dia da venda</th>
                    <th>Cliente</th>
                    <th>Valor</th>
                </tr>
            </thead>

            <tbody>
                <c:forEach items="${relatorio}" var="relatorio">
                    <tr>
                        <td style='text-align:center; vertical-align:middle'><c:out value="${relatorio.idVenda}"/></td>
                        <td style='text-align:center; vertical-align:middle'><c:out value="${relatorio.dtCompra}"/></td>
                        <td style='text-align:center; vertical-align:middle'><c:out value="${relatorio.nome}"/></td>
                        <td style='text-align:center; vertical-align:middle'><c:out value="${relatorio.valorFinal}"/></td>

                    </tr>
                </c:forEach>
            </tbody>
        </table>
        </div>
        <div>
            <form method="POST" action='RelatorioServlet' name="frmListaRelatorio">
                <input type="date" id="initTime" name="dataInicio">
                <input type="date" id="finalTime" name="dataFim">
                <input type="submit" value="Pesquisar"/>
                <input type="hidden" name="action" value="pesquisa"/><br>
                
                Nome cliente : <input type="text" name="nomeCliente"/> <br /> 
                
            </form>
            
            
        </div>
        
    </body>
    <a href="${pageContext.request.contextPath}/index.jsp">Voltar para Index</a>
</html>