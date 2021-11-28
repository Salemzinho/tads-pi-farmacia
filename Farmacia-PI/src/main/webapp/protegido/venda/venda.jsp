<%-- 
    Document   : venda
    Created on : 2 de nov. de 2021, 23:09:43
    Author     : vinis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vendas</title>
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
        <div class="card-cadastro-cliente">
            <h1>Produtos em estoque</h1>
            <table class="table">
                <thead>
                    <tr>
                        <th>ID Produto</th>
                        <th>Nome</th>
                        <th>Fabricante</th>
                        <th>QTD</th>
                        <th>Valor</th>

                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${produtos}" var="produto">
                        <tr>
                            <td><c:out value="${produto.id}"/></td>
                            <td><c:out value="${produto.nome}"/></td>
                            <td><c:out value="${produto.fabricante}"/></td>
                            <td><c:out value="${produto.qtd}"/></td>
                            <td><c:out value="${produto.valor}"/></td>


                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="card-cadastro-cliente">
            <h1>Clientes Encontrados</h1>
            <table  class="table">
                <thead>
                    <tr>
                        <th>ID Cliente</th>
                        <th>Nome</th>
                        <th>CPF</th>
                        <th>Telefone</th>
                        <th>E-mail</th>
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
                        </tr>
                    </c:forEach>

                </tbody>
            </table>
        </div>

        <div class="card-cadastro-cliente">
            <h1>Cadastrar Venda</h1>
            <form method="POST" action='VendaServlet' name="frmCadastroVenda">
                ID Produto : <input type="text" name="produto"
                                    value="<c:out value="${venda.produto}" />" /> <br /> 

                Qtd produto : <input type="text" name="qtd"
                                     value="<c:out value="${venda.qtd}" />" /> <br /> 

                ID Cliente : <input type="text" name="cliente" 
                                    value="<c:out value="${venda.cliente}"/>" /> <br />

                <input type="submit" value="Cadastrar" />
                <input type="hidden" name="action" value="incluir"/>
            </form> 
        </div>
        </div>
    </body>
</html>
