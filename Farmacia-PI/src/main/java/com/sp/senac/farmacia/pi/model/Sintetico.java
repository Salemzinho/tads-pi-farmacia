/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sp.senac.farmacia.pi.model;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;

/**
 *
 * @author maris
 */
@Getter
@Setter
public class Sintetico {

    private int idVenda;
    private String nome;
    private Date dtCompra;
    private Double valorFinal;

    @Override
    public String toString() {
        return "nome cliente=" + nome + ", data da compra=" + dtCompra + ", Valor Final=" + valorFinal;
    }

}
