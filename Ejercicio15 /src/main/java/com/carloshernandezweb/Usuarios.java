/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.carloshernandezweb;

/**
 *
 * @author abeliux
 */
public class Usuarios {

    String nombre = "";
    String ap1 = "";
    String ap2 = "";

    public Usuarios() {
    }

    public Usuarios(String nombre, String ap1, String ap2) {
        this.nombre = nombre;
        this.ap1 = ap1;
        this.ap2 = ap2;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getAp1() {
        return ap1;
    }

    public void setAp1(String ap1) {
        this.ap1 = ap1;
    }

    public String getAp2() {
        return ap2;
    }

    public void setAp2(String ap2) {
        this.ap2 = ap2;
    }

}
