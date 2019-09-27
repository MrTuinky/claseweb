/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.carloshernandezweb.ej7;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.carloshernandezweb.operacion.operacion;

/**
 *
 * @author alejandro
 */
public class servlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            //Recoger parametros
            int op1 = Integer.parseInt(request.getParameter("op1"));
            int op2 = Integer.parseInt(request.getParameter("op2"));
            int operador = Integer.parseInt(request.getParameter("operacion"));

            //Crear objeto operacion y Gson
            operacion oOperacion = new operacion(op1, op2);
            Gson ogson = new Gson();
            int resultado = 0;
            switch (operador) {
                case 1:
                    //suma
                    resultado = op1 + op2;
                    break;
                case 2:
                    //resta
                    resultado = op1 - op2;
                    break;
                case 3:
                    //multiplicacion
                    resultado = op1 * op2;
                    break;
                case 4:
                    //Division
                    resultado = op1 / op2;

                    break;
                default:
            }
            oOperacion.setResultado(resultado);
            out.println(ogson.toJson(oOperacion));
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
