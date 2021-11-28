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
public class Usuario {

    private int id;
    private String nome;
    private String usuario;
    private String senha;
    private String perfil;

    public boolean isAdmin() {
        return this.perfil.equalsIgnoreCase("admin");
    }

    public boolean isGerente() {
        return this.perfil.equalsIgnoreCase("gerente");
    }

    public boolean isBackOffice() {
        return this.perfil.equalsIgnoreCase("back");
    }
    
    public boolean isVendedor(){
        return this.perfil.equalsIgnoreCase("vendedor");
    }


    //criar perfil como métodos do exemplo acima
}
