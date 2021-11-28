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

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../../css/main.css">
         <!-- Boostrap CDN -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <title>Relatórios</title>

        <!-- CSS -->
        <!--<style>
            h1 {
              color: maroon;
              margin-left: 40px;
            }
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
            }
            
        </style>-->

    </head>
    <body>
        <div class="body-css">
        <header>
            <div class="container-css">
                <h1>Farmacia</h1>
                <nav>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/protegido/index.jsp">Home</a><li>
                        <li><a> Bem-vindo, ${sessionScope.usuario.nome}</a></li>
                        <li><a href="${pageContext.request.contextPath}/LoginServlet">Sair</a></li>
                    </ul>
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
            <form method="POST" action='RelatorioServlet' name="frmListaRelatorio">
                <input placeholder="Nome Cliente" type="text" name="nomeCliente"/>
                <input type="date" id="initTime" name="dataInicio">
                <input type="date" id="finalTime" name="dataFim">
                <input type="submit" value="Pesquisar"/>
                <input type="hidden" name="action" value="pesquisa"/><br>



            </form>
        </div>
        </div>
    </body>

</html>
