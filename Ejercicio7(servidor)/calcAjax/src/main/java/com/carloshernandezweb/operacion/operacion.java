/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.carloshernandezweb.operacion;

/**
 *
 * @author alejandro
 */
public class operacion {
      private int op1;
    private int op2;
    private int resultado;

    public operacion(int op1, int op2) {
        this.op1 = op1;
        this.op2 = op2;
    }

    public int getOp1() {
        return op1;
    }

    public int getOp2() {
        return op2;
    }

    public int getResultado() {
        return resultado;
    }

    public void setOp1(int op1) {
        this.op1 = op1;
    }

    public void setOp2(int op2) {
        this.op2 = op2;
    }

    public void setResultado(int resultado) {
        this.resultado = resultado;
    }
    
}
