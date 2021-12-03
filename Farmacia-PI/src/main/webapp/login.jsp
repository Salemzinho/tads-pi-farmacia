<%-- 
    Document   : login
    Created on : 25 de nov de 2021, 17:37:52
    Author     : maris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/main.css">
        <link href="${pageContext.request.contextPath}/lib/bootstrap-4.1.3-dist/css/bootstrap.min.css"
              rel="stylesheet" type="text/css"/>
        <title>Login</title>
    </head>
    <body>
        <div class="body-css">
        <header>
            <div class="container-css">
                <h1>Farmácia</h1>

            </div>
        </header>
        <c:if test="${param.loginInvalido != null}">
            <div class="alert alert-primary" role="alert">
                Usuário ou senha inválidos. Tente novamente.
            </div>
        </c:if>

        <div class="card-login">
            <div class="centralizar-img">
                <img src="card-img-login.png">
            </div>
            <form action="LoginServlet" method="POST">
                <input type="text" name="nomeUsuario" placeholder="Usuário"><br/>
                <input type="password" name="senhaUsuario" placeholder="Senha"><br/>

                <input class="btn btn-primary" type="submit" value="Acessar">
            </form>
        </div>
        </div>
    </body>
</html>
