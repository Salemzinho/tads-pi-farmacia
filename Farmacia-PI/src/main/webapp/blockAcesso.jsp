<%-- 
    Document   : blockAcesso
    Created on : 27 de nov de 2021, 11:23:05
    Author     : maris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/main.css">
        <title>Não Autorizado</title>
    </head>
    <body>
        <header>
            <div class="container">
                <h1>Farmacia</h1>
                <nav>
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/protegido/index.jsp">Home</a><li>
                        <li>Bem-vindo, ${sessionScope.usuario.nome}</li>
                        <li><a href="${pageContext.request.contextPath}/LoginServlet">Sair</a></li>
                    </ul>
                </nav>
            </div>
        </header>

        <h2>Acesso não autorizado!</h2> <br/>
        <a href="${pageContext.request.contextPath}/protegido/index.jsp">Voltar</a>
</body>
</html>
