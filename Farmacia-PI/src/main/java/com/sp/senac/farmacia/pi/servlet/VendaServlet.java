/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sp.senac.farmacia.pi.servlet;

import com.sp.senac.farmacia.pi.dao.ClienteDAO;
import com.sp.senac.farmacia.pi.dao.ProdutoDAO;
import com.sp.senac.farmacia.pi.dao.VendaDAO;
import com.sp.senac.farmacia.pi.model.ItemVenda;
import com.sp.senac.farmacia.pi.model.Produto;
import com.sp.senac.farmacia.pi.model.Venda;
import java.io.IOException;
import java.sql.SQLException;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author vinis
 */
@WebServlet(name = "VendaServlet", urlPatterns = {"/VendaServlet"})
public class VendaServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private static String LIST_PRO = "/protegido/venda/venda.jsp";

    private static String INICIO = "/index.jsp";
    private ProdutoDAO dao;
    private ClienteDAO daoClie;
    private VendaDAO daoVenda;
    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
    //public static List<Produto> produto = new ArrayList<Produto>();
    

    public VendaServlet() throws ClassNotFoundException, SQLException {
        super();
        dao = new ProdutoDAO();
        daoClie = new ClienteDAO();
        daoVenda = new VendaDAO();
    }

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        String forward = "";
        String action = request.getParameter("action");


            forward = LIST_PRO;
            request.setAttribute("produtos", dao.getTodosProdutos());
            request.setAttribute("clientes", daoClie.getTodosClientes());

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);

    } //fim do GET

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
       
            
            Venda venda = new Venda();
            ArrayList<ItemVenda> itemVendaList = new ArrayList<>();
            ItemVenda itemVenda = new ItemVenda();
            
            itemVenda.setIdProduto(Integer.parseInt(request.getParameter("produto")));
            itemVenda.setQuantidade(Integer.parseInt(request.getParameter("qtd")));
            itemVendaList.add(itemVenda);
            
            Produto prod = dao.getProdutoId(itemVenda.getIdProduto());
            
            venda.setCliente(Integer.parseInt(request.getParameter("cliente")));
            venda.setDtvenda(new Date());
            venda.setValorFinal(prod.getValor() * itemVenda.getQuantidade());
            venda.setItemVenda(itemVendaList);

            boolean salvar = daoVenda.salvar(venda);

            RequestDispatcher view = request.getRequestDispatcher(INICIO);
            request.setAttribute("produtos", dao.getTodosProdutos());
            view.forward(request, response);

        
    }
}
