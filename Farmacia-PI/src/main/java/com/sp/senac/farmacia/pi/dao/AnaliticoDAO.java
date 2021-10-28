/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sp.senac.farmacia.pi.dao;

import com.sp.senac.farmacia.pi.Conexao;
import com.sp.senac.farmacia.pi.model.Analitico;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author maris
 */
public class AnaliticoDAO {

    public static ArrayList<Analitico> filtroIdVenda(int id) {
        Connection conexao = null;
        PreparedStatement instrucaoSQL = null;
        ResultSet rs = null;

        ArrayList<Analitico> filtro = new ArrayList<>();

        try {

            conexao = Conexao.getConexao();
            instrucaoSQL = conexao.prepareStatement("select produto.nomeProduto, itemvenda.quantidade, produto.valorVenda\n"
                    + "from itemvenda \n"
                    + "inner join produto \n"
                    + "on itemvenda.idProduto = produto.id\n"
                    + "where itemvenda.idVenda = ?;");
            instrucaoSQL.setInt(1, id);
            rs = instrucaoSQL.executeQuery();

            while (rs.next()) {
                Analitico c = new Analitico();
                c.setNomeProduto(rs.getString("nomeProduto"));
                c.setQtdProduto(rs.getInt("quantidade"));
                c.setPrecoUnitario(rs.getDouble("valorVenda"));

                filtro.add(c);

            }

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            filtro = null;
        }

        return filtro;
    }

}
