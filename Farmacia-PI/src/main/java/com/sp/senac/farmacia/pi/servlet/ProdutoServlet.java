/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sp.senac.farmacia.pi.servlet;

import com.sp.senac.farmacia.pi.dao.ProdutoDAO;
import com.sp.senac.farmacia.pi.model.Produto;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author maris
 */
@WebServlet(name = "Produtos", urlPatterns = {"/ProdutoServlet"})
public class ProdutoServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private static String INSERT_OR_EDIT = "/produto/cadastroProduto.jsp";
    private static String LIST_PRO = "/produto/listaProduto.jsp";
    private static String PESQUISA = "/produto/pesquisarProduto.jsp";
    private ProdutoDAO dao;

    public ProdutoServlet() throws ClassNotFoundException, SQLException {
        super();
        dao = new ProdutoDAO();
    }

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        String forward = "";
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("excluir")) {

            int idProduto = Integer.parseInt(request.getParameter("id"));
            dao.deleteProduto(idProduto);
            forward = LIST_PRO;
            request.setAttribute("produtos", dao.getTodosProdutos());

        } else if (action.equalsIgnoreCase("alterar")) {

            forward = INSERT_OR_EDIT;
            int idProduto = Integer.parseInt(request.getParameter("id"));
            Produto pro = dao.getProdutoId(idProduto);
            request.setAttribute("produto", pro);

        } else if (action.equalsIgnoreCase("listaProdutos")) {

            forward = LIST_PRO;
            request.setAttribute("produtos", dao.getTodosProdutos());

        } else if (action.equalsIgnoreCase("pesquisar")) {
            forward = PESQUISA;
        } else if (action.equalsIgnoreCase("incluir")) {
            forward = INSERT_OR_EDIT;
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);

    } //fim do GET

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("pesquisa")) {
            //PORQUE SÓ RETORNA O 1O PRODUTO?

            String nomeProduto = request.getParameter("busca");
            RequestDispatcher view = request.getRequestDispatcher(LIST_PRO);
            request.setAttribute("produtos", dao.getProdutoNome(nomeProduto));
            view.forward(request, response);

        } else if (action.equalsIgnoreCase("incluir")) {

            Produto pro = new Produto();

            pro.setNome(request.getParameter("nome"));
            pro.setFabricante(request.getParameter("fabricante"));
            pro.setQtd(Integer.parseInt(request.getParameter("qtd")));
            pro.setValor(Double.parseDouble(request.getParameter("valor")));

            String idProduto = request.getParameter("id");

            if (idProduto == null || idProduto.isEmpty()) {
                dao.addProduto(pro);
            } else {
                pro.setId(Integer.parseInt(idProduto));
                dao.updateProduto(pro);
            }

            RequestDispatcher view = request.getRequestDispatcher(LIST_PRO);
            request.setAttribute("produtos", dao.getTodosProdutos());
            view.forward(request, response);

        }
    }
}
