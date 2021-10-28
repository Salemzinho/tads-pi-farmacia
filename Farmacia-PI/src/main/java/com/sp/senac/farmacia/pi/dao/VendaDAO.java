/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sp.senac.farmacia.pi.dao;

import com.sp.senac.farmacia.pi.Conexao;
import com.sp.senac.farmacia.pi.model.ItemVenda;
import com.sp.senac.farmacia.pi.model.Venda;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author maris
 */
public class VendaDAO {

    public static boolean salvar(Venda v) {
        boolean retorno = false;
        Connection conexao = null;
        PreparedStatement instrucaoSQL = null;

        try {
            conexao = Conexao.getConexao();

            instrucaoSQL = conexao.prepareStatement("INSERT INTO venda (valorFinal, idCliente, dtVenda) VALUES (?, ?, ?)", Statement.RETURN_GENERATED_KEYS);

            //parametros para gravar
            instrucaoSQL.setDouble(1, v.getValorFinal());
            instrucaoSQL.setInt(2, v.getCliente());
            instrucaoSQL.setDate(3, new java.sql.Date(v.getDtvenda().getTime()));

            int linhasAfetadas = instrucaoSQL.executeUpdate();

            if (linhasAfetadas > 0) {
                retorno = true;

                ResultSet generatedKeys = instrucaoSQL.getGeneratedKeys(); //para recuperar o id do cliente
                if (generatedKeys.next()) {
                    v.setId(generatedKeys.getInt(1));

                    for (ItemVenda item : v.getItemVenda()) {
                        instrucaoSQL = conexao.prepareStatement("INSERT INTO ItemVenda (quantidade, idVenda, idProduto) VALUES (?, ?, ?)", Statement.RETURN_GENERATED_KEYS);

                        //parametros para gravar
                        instrucaoSQL.setInt(1, item.getQuantidade());
                        instrucaoSQL.setInt(2, v.getId());
                        instrucaoSQL.setInt(3, item.getIdProduto());  // CONFERIR SE TÁ CERTO

                        linhasAfetadas = instrucaoSQL.executeUpdate();
                    }

                } else {
                    throw new SQLException("Falha ao obter ID do cliente!");
                }
            } else {
                retorno = false;
            }

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            retorno = false;
        }
        return retorno;
    }

    public static boolean atualizar(Venda p) {
        boolean retorno = false;
        Connection conexao = null;
        PreparedStatement instrucaoSQL = null;

        try {

            conexao = Conexao.getConexao();
            instrucaoSQL = conexao.prepareStatement("UPDATE venda SET valorFinal=?, idCliente=?, dtVenda=?");

            instrucaoSQL.setDouble(1, p.getValorFinal());
            instrucaoSQL.setInt(2, p.getCliente());
            instrucaoSQL.setDate(3, new java.sql.Date(p.getDtvenda().getTime()));

            int linhasAfetadas = instrucaoSQL.executeUpdate();
            if (linhasAfetadas > 0) {
                retorno = true;
            } else {
                retorno = false;
            }

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            retorno = false;
        }
        return retorno;
    }

    public static boolean excluir(int pID) {
        boolean retorno = false;
        Connection conexao = null;
        PreparedStatement instrucaoSQL = null;

        try {
            conexao = Conexao.getConexao();
            instrucaoSQL = conexao.prepareStatement("DELETE FROM venda WHERE id = ?");
            instrucaoSQL.setInt(1, pID);

            int linhasAfetadas = instrucaoSQL.executeUpdate();

            if (linhasAfetadas > 0) {
                retorno = true;
            } else {
                retorno = false;
            }

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            retorno = false;
        }
        return retorno;
    }

    
    public static ArrayList<Venda> listarProdutos() {
        ResultSet rs = null;
        Connection conexao = null;
        PreparedStatement instrucaoSQL = null;

        ArrayList<Venda> listar = new ArrayList<Venda>();

        try {
            conexao = Conexao.getConexao();
            instrucaoSQL = conexao.prepareStatement("SELECT * FROM venda;");
            rs = instrucaoSQL.executeQuery(); //executar a query

            //percorrer o result set
            while (rs.next()) {
                Venda c = new Venda();
                c.setId(rs.getInt("id"));
                c.setValorFinal(rs.getDouble("pVenda"));
                c.setCliente(rs.getInt("idCLiente"));
                c.setDtvenda(rs.getDate("dtvenda"));

                listar.add(c);

            }

        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            listar = null;
        }
        return listar;
    }

}
