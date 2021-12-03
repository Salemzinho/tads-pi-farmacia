<%-- 
    Document   : pesquisarCliente
    Created on : 15 de out de 2021, 21:32:29
    Author     : maris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pesquisa de Clientes</title>
        <meta charset="UTF-8">
        <title>Pesquisa de Clientes</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- CSS -->
        <link rel="stylesheet" href="../../css/main.css">
        
        <!-- Boostrap CDN -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
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
                    </ul>
                </nav>
            </div>
        </header>
        <div class="card-cadastro-cliente">
            <div class="card-nome">
                <h2>Consulta Cliente</h2>
            </div>



            <form method="POST" action='ClienteFarmaciaServlet' name="frmPesquisaCliente">
                <input placeholder ="Pesquisa por nome" type="text" name="busca"
                       value="<c:out value="${cliente.busca}" />" /> <br />

                <input type="submit" value="Pesquisar"/>
                <input type="hidden" name="action" value="pesquisa"/>


            </form>
        </div>
        </div>
    </body>
</html>
