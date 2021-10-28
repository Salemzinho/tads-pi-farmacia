/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sp.senac.farmacia.pi.dao;

import com.sp.senac.farmacia.pi.Conexao;
import com.sp.senac.farmacia.pi.model.Sintetico;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author maris
 */
public class SinteticoDAO {

    public static ArrayList<Sintetico> filtroData(Date inicialDate, Date finalDate) {
        Connection conexao = null;
        PreparedStatement instrucaoSQL = null;
        ResultSet rs = null;

        ArrayList<Sintetico> relatorioSinte = new ArrayList<Sintetico>();

        try {

            conexao = Conexao.getConexao();
            instrucaoSQL = conexao.prepareStatement("SELECT venda.id, venda.dtvenda, cliente.nome, venda.valorFinal\n"
                    + "FROM venda  \n"
                    + "INNER JOIN cliente  \n"
                    + "ON venda.idCliente = cliente.id \n"
                    + "WHERE venda.dtvenda BETWEEN ? AND ?;");//montar o select
            instrucaoSQL.setDate(1, new java.sql.Date(inicialDate.getTime()));
            instrucaoSQL.setDate(2, new java.sql.Date(finalDate.getTime()));
            rs = instrucaoSQL.executeQuery();

            while (rs.next()) {
                Sintetico c = new Sintetico();
                c.setIdVenda(rs.getInt("id"));
                c.setDtCompra(rs.getDate("dtvenda"));
                c.setNome(rs.getString("nome"));
                c.setValorFinal(rs.getDouble("valorFinal"));

                relatorioSinte.add(c);
            }

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            relatorioSinte = null;
        }
        return relatorioSinte;
    }

}
