/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sp.senac.farmacia.pi.model;

import java.util.ArrayList;
import java.util.Date;
import lombok.Getter;
import lombok.Setter;

/**
 *
 * @author maris
 */

@Getter
@Setter
public class Venda {

    private int id;
    private double valorFinal;
    private ArrayList<ItemVenda> itemVenda;
    private int cliente;
    private Date dtvenda;
    
    //usando lombok nao precisa discriminal construtores e getters/setters


}
