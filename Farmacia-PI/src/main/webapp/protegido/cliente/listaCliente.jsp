<%-- 
    Document   : CadastroCliente
    Created on : 15 de out de 2021, 16:28:47
    Author     : maris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Clientes</title>
        
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
        <div style="width: 600px;" class="card-cadastro-cliente">
            <table class="table">
                <thead>
                    <tr>
                        <th>ID Cliente</th>
                        <th>Nome</th>
                        <th>CPF</th>
                        <th>Telefone</th>
                        <th>E-mail</th>
                        <th colspan=2>Action</th>
                    </tr>
                </thead>

                <tbody>
                    <c:forEach items="${clientes}" var="cliente">
                        <tr>
                            <td><c:out value="${cliente.id}"/></td>
                            <td><c:out value="${cliente.nome}"/></td>
                            <td><c:out value="${cliente.CPF}"/></td>
                            <td><c:out value="${cliente.telCliente}"/></td>
                            <td><c:out value="${cliente.email}"/></td>

                            <td><a href="ClienteFarmaciaServlet?action=alterar&id=<c:out value="${cliente.id}"/>">Alterar</a></td>
                            <td><a href="ClienteFarmaciaServlet?action=excluir&id=<c:out value="${cliente.id}"/>">Excluir</a></td>
                        </tr>
                    </c:forEach>

                </tbody>
            </table>

            </br>

            <p><a href="ClienteFarmaciaServlet?action=incluir">Cadastrar Cliente</a></p>
            <p><a href="ClienteFarmaciaServlet?action=pesquisar">Pesquisar Cliente</a></p>
            <!-- Aqui entra o pesquisar cliente que direciona pra pagina como no cadastro. 
            na pagnia pesquisar seguir o mesmo fluxo do cadastro-->
        </div>
    </body>
    <!--<a href="${pageContext.request.contextPath}/index.jsp">Voltar para Index</a>-->
</html>
