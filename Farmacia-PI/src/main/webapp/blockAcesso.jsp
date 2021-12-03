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

        <h2>Acesso não autorizado!</h2> <br/>
        <a href="${pageContext.request.contextPath}/protegido/index.jsp">Voltar</a>
        </div>
    </body>
</html>
