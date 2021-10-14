/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sp.senac.farmacia.pi.model;

import lombok.Getter;
import lombok.Setter;

/**
 *
 * @author maris
 */
@Getter
@Setter
public class Cliente {

    //private static int qtdClientesCadastrados;

    private int id;
    private String nome;
    private String email;
    private String cpf;
    private String telefone;
  
    

    @Override
    public String toString() {
        return "nome=" + nome + ", email=" + email + ", cpf=" + cpf + ", telefone=" + telefone;
    }
    
    
    //TIRAR DÚVIDA
    
    /*public Cliente() { //construtor
        qtdClientesCadastrados++;
        this.id = qtdClientesCadastrados;
    }

    public Cliente(String pCPF, String pTelCliente, Date pDataNascimento,
            String pCEPcliente, String pNomeCliente, String pGeneroCliente, String pEstadoCivilCliente,
            String pEmailCliente, String pEnderecoCliente, String pBairroCliente, String pEstadoCliente,
            String pCidadeCliente) {

        qtdClientesCadastrados++;
        this.id = qtdClientesCadastrados;
        this.CPF = pCPF;
        this.telCliente = pTelCliente;
        this.dataNascimento = pDataNascimento;
        this.CEPcliente = pCEPcliente;
        this.nomeCliente = pNomeCliente;
        this.generoCliente = pGeneroCliente;
        this.estadoCivilCliente = pEstadoCivilCliente;
        this.emailCliente = pEmailCliente;
        this.enderecoCliente = pEnderecoCliente;
        this.bairroCliente = pBairroCliente;
        this.estadoCliente = pEstadoCliente;
        this.cidadeCliente = pCidadeCliente;

    }

    public Cliente(int pId, String pCPF, String pTelCliente, Date pDataNascimento,
            String pCEPcliente, String pNomeCliente, String pGeneroCliente, String pEstadoCivilCliente,
            String pEmailCliente, String pEnderecoCliente, String pBairroCliente, String pEstadoCliente,
            String pCidadeCliente) {
        this.id = pId;
        this.CPF = pCPF;
        this.telCliente = pTelCliente;
        this.dataNascimento = pDataNascimento;
        this.CEPcliente = pCEPcliente;
        this.nomeCliente = pNomeCliente;
        this.generoCliente = pGeneroCliente;
        this.estadoCivilCliente = pEstadoCivilCliente;
        this.emailCliente = pEmailCliente;
        this.enderecoCliente = pEnderecoCliente;
        this.bairroCliente = pBairroCliente;
        this.estadoCliente = pEstadoCliente;
        this.cidadeCliente = pCidadeCliente;

    }
*/
}
