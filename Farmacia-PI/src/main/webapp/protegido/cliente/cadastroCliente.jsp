<%-- 
    Document   : cadastroCliente
    Created on : 15 de out de 2021, 17:17:40
    Author     : maris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cadastrar Cliente</title>
        
        <!-- CSS -->
        <link rel="stylesheet" href="../../css/main.css">
         <!-- Boostrap CDN -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
            <div class="card-nome">
                <h2>Cadastro Cliente</h2>
            </div>
            <form method="POST" action='ClienteFarmaciaServlet' name="frmCadastroCliente">
 
                <input placeholder="ID" id="id-produto" type="text" readonly="readonly" name="id" value="<c:out value="${cliente.id}" />" />


                <input placeholder="Nome" style="width: 320px;" type="text" name="nome" value="<c:out value="${cliente.nome}" />" />

                <input placeholder="CPF" type="text" name="CPF" value="<c:out value="${cliente.CPF}" />" />

                <input placeholder="Telefone" type="text" name="telCliente" value="<c:out value="${cliente.telCliente}" />" />

                <input placeholder="E-mail" type="text" name="email" value="<c:out value="${cliente.email}" />" />

                <input type="submit" value="Cadastrar" />
                <input type="hidden" name="action" value="incluir"/>

            </form>
        </div>
        <br>
        </div>
    </body>
</html>
