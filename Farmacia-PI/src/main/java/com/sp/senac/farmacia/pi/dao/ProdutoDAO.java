/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sp.senac.farmacia.pi.dao;

import com.sp.senac.farmacia.pi.Conexao;
import com.sp.senac.farmacia.pi.model.Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author maris
 */
public class ProdutoDAO {

    private Connection con;

    public ProdutoDAO() throws ClassNotFoundException, SQLException {
        con = Conexao.getConexao();
    }

    public void addProduto(Produto pro) {
        try {

            PreparedStatement ps;
            ps = con.prepareStatement("insert into produto (nome, fabricante, qtd, valor) values (?,?,?,?);");

            ps.setString(1, pro.getNome());
            ps.setString(2, pro.getFabricante());
            ps.setInt(3, pro.getQtd());
            ps.setDouble(4, pro.getValor());

            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void deleteProduto(int id) {
        try {
            PreparedStatement ps = con.prepareStatement("delete from produto where id=?;");

            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();

        }
    }

    public void updateProduto(Produto pro) {
        try {

            PreparedStatement ps = con
                    .prepareStatement("update produto set nome=?, fabricante=?, qtd=?, valor=? where id=?;");

            ps.setString(1, pro.getNome());
            ps.setString(2, pro.getFabricante());
            ps.setInt(3, pro.getQtd());
            ps.setDouble(4, pro.getValor());
            ps.setInt(5, pro.getId());

            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public List<Produto> getTodosProdutos() {

        List<Produto> listaProduto = new ArrayList<Produto>();

        try {
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from produto;");

            while (rs.next()) {
                Produto pro = new Produto();

                pro.setId(rs.getInt("id"));
                pro.setNome(rs.getString("nome"));
                pro.setFabricante(rs.getString("fabricante"));
                pro.setQtd(rs.getInt("qtd"));
                pro.setValor(rs.getDouble("valor"));

                listaProduto.add(pro);

            }

        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listaProduto;
    }

    public Produto getProdutoId(int id) {

        Produto pro = new Produto();

        try {
            PreparedStatement ps = con.prepareStatement("select * from produto where id=?;");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                pro.setId(rs.getInt("id"));
                pro.setNome(rs.getString("nome"));
                pro.setFabricante(rs.getString("fabricante"));
                pro.setQtd(rs.getInt("qtd"));
                pro.setValor(rs.getDouble("valor"));
            }

        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pro;
    }
    
    public List<Produto> getProdutoNome(String busca){
        
        List<Produto> listaProduto = new ArrayList<Produto>();
        
        try{
            PreparedStatement ps = con.prepareStatement("select * from produto where nome like ?;");
             ps.setString(1, '%' + busca + '%');
             ResultSet rs = ps.executeQuery();
             
             if(rs.next()){
                 Produto pro = new Produto();
                 
                 pro.setId(rs.getInt("id"));
                 pro.setNome(rs.getString("nome"));
                 pro.setFabricante(rs.getString("fabricante"));
                 pro.setQtd(rs.getInt("qtd"));
                 pro.setValor(rs.getDouble("valor"));
                 
                 listaProduto.add(pro);                 
             }
            
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return listaProduto;
    }
    
    
}
