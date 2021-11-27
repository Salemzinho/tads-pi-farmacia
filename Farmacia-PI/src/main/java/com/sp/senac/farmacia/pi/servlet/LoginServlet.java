/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sp.senac.farmacia.pi.servlet;

import com.sp.senac.farmacia.pi.dao.UsuarioDAO;
import com.sp.senac.farmacia.pi.model.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author maris
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nomeUsuario = request.getParameter("nomeUsuario");
        String senhaUsuario = request.getParameter("senhaUsuario");
        //System.out.println(nomeUsuario); //testando log
        //System.out.println(senhaUsuario);

        Usuario usuario = UsuarioDAO.getUsuario(nomeUsuario, senhaUsuario);

        if (usuario == null) {

        } else {
            HttpSession sessao = request.getSession();
            sessao.setAttribute("usuario", usuario);
            response.sendRedirect(request.getContextPath() + "/protegido/index.jsp");

        }

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sessao = request.getSession();
        sessao.invalidate();
        response.sendRedirect(request.getContextPath() + "/login.jsp");
    }

}
