<%-- 
    Document   : login
    Created on : 25 de nov de 2021, 17:37:52
    Author     : maris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/main.css">
        
        <title>Login</title>
    </head>
    <body>
        <header>
            <div class="container">
                <h1>Farmacia</h1>
                <nav>
                    <ul>
                                                                              
                    </ul>
                </nav>
            </div>
        </header>
        <div class="card-login">
            <div class="centralizar-img">
                <img src="card-img-login.png">
            </div>
            <form action="LoginServlet" method="POST">
                <input type="text" name="nomeUsuario" placeholder="Usuário"><br/>
                <input type="password" name="senhaUsuario" placeholder="Senha"><br/>
                <button type="submit">Enviar</button>
            </form>
        </div>
    </body>
</html>
