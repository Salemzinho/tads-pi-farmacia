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
public class Analitico {

    private String nomeProduto;
    private int qtdProduto;
    private double precoUnitario;

    @Override
    public String toString() {
        return "nome produto=" + nomeProduto + ", QTD=" + qtdProduto + ", Preço=" + precoUnitario;
    }

}
