/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sp.senac.farmacia.pi.servlet;

import com.sp.senac.farmacia.pi.dao.SinteticoDAO;
import com.sp.senac.farmacia.pi.model.Sintetico;
import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
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
 * @author vinis
 */
@WebServlet(name = "RelatorioServlet", urlPatterns = {"/protegido/RelatorioServlet"})
public class RelatorioServlet extends HttpServlet {

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
    private static String LIST_PRO = "/protegido/venda/listaRelatorio.jsp";
    private SinteticoDAO dao;
    DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");

    
    public RelatorioServlet() throws ClassNotFoundException, SQLException {
        super();
        dao = new SinteticoDAO();
    }

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        String forward = "";
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("listaVendas")) {

            forward = LIST_PRO;
           // request.setAttribute("relatorio", dao.);

        } 
        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);

    } //fim do GET

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("pesquisa")) {
            try {
                //PORQUE SÓ RETORNA O 1O PRODUTO?
                
                String diaInicial = request.getParameter("dataInicio");
                Date initialDate = new SimpleDateFormat("yyyy-MM-dd").parse(diaInicial);
                String diaFinal = request.getParameter("dataFim");
                Date finalDate = new SimpleDateFormat("yyyy-MM-dd").parse(diaFinal);
                RequestDispatcher view = request.getRequestDispatcher(LIST_PRO);
                
                if(request.getParameter("nomeCliente").isEmpty()){
                request.setAttribute("relatorio", dao.filtroData(initialDate, finalDate));
                view.forward(request, response);    
                } else{
                    ArrayList<Sintetico> sinteticoList = dao.filtroData(initialDate, finalDate);
                    ArrayList<Sintetico> sinteticoNomeList = new ArrayList<>();
                    
                    
                    for (Sintetico sintetico : sinteticoList){
                        if(sintetico.getNome().contains(request.getParameter("nomeCliente"))){
                            sinteticoNomeList.add(sintetico);
                        }
                    }
                    
                    request.setAttribute("relatorio", sinteticoNomeList);
                    view.forward(request, response); 
                }
                
                
                
            } catch (ParseException ex) {
                Logger.getLogger(RelatorioServlet.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
    }
}
