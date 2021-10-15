/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sp.senac.farmacia.pi.dao;

import com.sp.senac.farmacia.pi.Conexao;
import com.sp.senac.farmacia.pi.model.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author maris
 */
public class ClienteDAO {

    private Connection con;

    public ClienteDAO() throws ClassNotFoundException, SQLException {
        con = Conexao.getConexao();
    }

    public void addCliente(Cliente cli) throws SQLException {

        try {
            PreparedStatement ps;
            ps = con.prepareStatement("insert into cliente(nome, CPF, telCliente, email) values (?,?,?,?);");

            ps.setString(1, cli.getNome());
            ps.setString(2, cli.getCPF());
            ps.setString(3, cli.getTelCliente());
            ps.setString(4, cli.getEmail());

            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        /*//boolean ok = true;
        String query = "insert into cliente(nome, CPF, telCliente, email) values (?,?,?,?);";
        Connection con = Conexao.getConexao();
        PreparedStatement ps;
        ps = con.prepareStatement(query);
        ps.setInt(1, cli.getId()); //VER AUTO INCREMENT
        ps.setString(1, cli.getNome());
        ps.setString(2, cli.getCPF());
        ps.setString(3, cli.getTelCliente());
        ps.setString(4, cli.getEmail());
        ps.execute();*/
    }

    public void deleteCliente(int id) {
        try {
            PreparedStatement ps = con
                    .prepareStatement("delete from cliente where id=?;");

            ps.setInt(1, id);
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        /*public static boolean deleteCliente(String cpf) {
           boolean ok = true;
        String query = "delete from cliente where cpf=?;";
        Connection con = Conexao.getConexao();
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, cpf);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
            ok = false;
        }
        return ok;
    }*/
    }

    public void updateCliente(Cliente cli) {
        try {
            PreparedStatement ps = con
                    .prepareStatement("update cliente set nome=?, CPF=?, telCliente=?, email=? where id=?");

            ps.setString(1, cli.getNome());
            ps.setString(2, cli.getCPF());
            ps.setString(3, cli.getTelCliente());
            ps.setString(4, cli.getEmail());
            ps.setInt(5, cli.getId());

            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        /*boolean ok = true;
        String query = "update cliente set nome=?, telCliente=?, email=? where cpf=?";
        Connection con = Conexao.getConexao();
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, cli.getNome());
            ps.setString(2, cli.getTelCliente());
            ps.setString(3, cli.getEmail());
            ps.setString(4, cli.getCPF());
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
            ok = false;
        }
        return ok;*/
    }

    public List<Cliente> getTodosClientes() {

        List<Cliente> listaCliente = new ArrayList<Cliente>();
        try {
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from cliente;");
            while (rs.next()) {
                Cliente cli = new Cliente();
                cli.setId(rs.getInt("id"));
                cli.setNome(rs.getString("nome"));
                cli.setCPF(rs.getString("CPF"));
                cli.setTelCliente(rs.getString("telCliente"));
                cli.setEmail(rs.getString("email"));

                listaCliente.add(cli);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return listaCliente;

        /*List<Cliente> listaClientes = new ArrayList<>();
        String query = "select * from cliente;";

        Connection con = Conexao.getConexao();
        try {
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Cliente cli = new Cliente();
                String nome = rs.getString("nome");
                String email = rs.getString("email");
                String telefone = rs.getString("telCliente");
                String CPF = rs.getString("CPF");
                cli.setNome(nome);
                cli.setEmail(email);
                cli.setCPF(CPF);
                cli.setTelCliente(telefone);

                listaClientes.add(cli);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listaClientes;*/
    }

    public Cliente getClienteId(int id) {
        Cliente cli = new Cliente();

        try {
            PreparedStatement ps = con.prepareStatement("select * from cliente where id=?;");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                cli.setId(rs.getInt("id"));
                cli.setNome(rs.getString("nome"));
                cli.setCPF(rs.getString("CPF"));
                cli.setTelCliente(rs.getString("telCliente"));
                cli.setEmail(rs.getString("email"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return cli;

    }

}
