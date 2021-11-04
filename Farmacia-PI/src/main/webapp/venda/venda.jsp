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
        <title>JSP Page</title>
    </head>
    <body>
        <div>
                <h1>Produtos em estoque</h1>
                 <table class="table">
                    <thead>
                        <tr>
                            <th>ID Produto</th>
                            <th>Nome</th>
                            <th>Fabricante</th>
                            <th>QTD</th>
                            <th>Valor</th>
                            <th>Action</th>
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

                                <td align="center">
                    <input type="checkbox" name="selectedItems"
                        value="<c:out value="${produto}"/>"/></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

            <h1>Clientes Encontrados</h1>
            <table  class="table">
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
    </div>
        
        <h1>Cadastrar Venda</h1>
        <form method="POST" action='VendaServlet' name="frmCadastroVenda">
            Produto : <input type="text" name="produto"
                          value="<c:out value="${venda.produto}" />" /> <br /> 

            Qtd produto : <input type="text" name="qtd"
                          value="<c:out value="${venda.qtd}" />" /> <br /> 

            Cliente : <input type="text" name="cliente" 
                            value="<c:out value="${venda.cliente}"/>" /> <br />
            
            <input type="submit" value="Cadastrar" />
            <input type="hidden" name="action" value="incluir"/>
        </form>
        
        <button type="submit" value="Cadastrar">Click Me!</button>
    </body>
</html>
