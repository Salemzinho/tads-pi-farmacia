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

    private int id;
    private String nome;
    private String email;
    private String CPF;
    private String telCliente;

    @Override
    public String toString() {
        return "nome=" + nome + ", email=" + email + ", cpf=" + CPF + ", telefone=" + telCliente;
    }

}
