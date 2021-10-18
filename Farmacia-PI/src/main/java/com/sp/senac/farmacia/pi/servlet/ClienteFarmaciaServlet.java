/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sp.senac.farmacia.pi.servlet;

import com.sp.senac.farmacia.pi.dao.ClienteDAO;
import com.sp.senac.farmacia.pi.model.Cliente;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.ParseException;
import java.util.HashSet;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author maris
 */
@WebServlet(name = "Clientes", urlPatterns = {"/ClienteFarmaciaServlet"})
public class ClienteFarmaciaServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static final long serialVersionUID = 1L;
    private static String INSERT_OR_EDIT = "/cliente/cadastroCliente.jsp";
    private static String LIST_USER = "/cliente/listaCliente.jsp";
    private static String PESQUISA = "/cliente/pesquisarCliente.jsp";
    private ClienteDAO dao;

    public ClienteFarmaciaServlet() throws ClassNotFoundException, SQLException {
        super();
        dao = new ClienteDAO();
    }

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        String forward = "";
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("excluir")) {

            int idCliente = Integer.parseInt(request.getParameter("id"));
            dao.deleteCliente(idCliente);
            forward = LIST_USER;
            request.setAttribute("clientes", dao.getTodosClientes());

        } else if (action.equalsIgnoreCase("alterar")) {
            forward = INSERT_OR_EDIT;
            int idCliente = Integer.parseInt(request.getParameter("id"));
            Cliente cli = dao.getClienteId(idCliente);
            request.setAttribute("cliente", cli);

        } else if (action.equalsIgnoreCase("listaClientes")) {

            forward = LIST_USER;
            request.setAttribute("clientes", dao.getTodosClientes());

        } else if (action.equalsIgnoreCase("pesquisar")) {

            forward = PESQUISA;

        } else if (action.equalsIgnoreCase("incluir")) {

            forward = INSERT_OR_EDIT;

        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("pesquisa")) { //parametro do botao
            //aqui deve entrar o codigo para comunicar com a dao que vem de pesquisarCliente.jsp
            
            //PORQUE SÓ RETORNA O 1O CLIENTE?
            
            String nomeCliente = request.getParameter("busca");
                      
            RequestDispatcher view = request.getRequestDispatcher(LIST_USER);
            request.setAttribute("clientes", dao.getClienteNome(nomeCliente));
            view.forward(request, response);
            
        } else if (action.equalsIgnoreCase("incluir")) {

            //fazer o if vindo do pesquisarCliente
            //isso vai dentro do else
            Cliente cli = new Cliente();
            cli.setNome(request.getParameter("nome"));
            cli.setCPF(request.getParameter("CPF"));
            cli.setTelCliente(request.getParameter("telCliente"));
            cli.setEmail(request.getParameter("email"));

            String idCliente = request.getParameter("id");
            try {

                if (idCliente == null || idCliente.isEmpty()) {
                    dao.addCliente(cli); //metodo para adcionar
                } else {
                    cli.setId(Integer.parseInt(idCliente));
                    dao.updateCliente(cli); //metodo atualizar
                }
            } catch (SQLException ex) {
                Logger.getLogger(ClienteFarmaciaServlet.class.getName()).log(Level.SEVERE, null, ex);
            }

            //aqui pra baixo é fora do if else
            RequestDispatcher view = request.getRequestDispatcher(LIST_USER);
            request.setAttribute("clientes", dao.getTodosClientes());
            view.forward(request, response);

        }
    }
}
