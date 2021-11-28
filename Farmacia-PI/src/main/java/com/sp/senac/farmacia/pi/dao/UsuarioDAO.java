/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sp.senac.farmacia.pi.dao;

import com.sp.senac.farmacia.pi.Conexao;
import com.sp.senac.farmacia.pi.model.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author maris
 */
public class UsuarioDAO {


    public static Usuario getUsuario(String login) {
        Connection con = Conexao.getConexao();
        Usuario usuario = null;
        try {
            PreparedStatement ps;
            ps = con.prepareStatement("select * from usuario where usuario=?;");
            ps.setString(1, login);
            //ps.setString(2, senha);
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
                int id = rs.getInt("id");
                String nome = rs.getString("nome");
                String perfil = rs.getString("perfil");
                String senhaFechada = rs.getString("senha");
                usuario = new Usuario();
                usuario.setId(id);
                usuario.setNome(nome);
                usuario.setPerfil(perfil);
                usuario.setUsuario(login);
                usuario.setSenha(senhaFechada);
            }

        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return usuario;
    }

}
