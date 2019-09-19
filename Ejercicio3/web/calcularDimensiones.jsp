<%-- 
    Document   : elegirDimensiones
    Created on : 19 sept. 2019, 15:48:21
    Author     : carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 3</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        
        <div class="container">
            
            <h1>Esta página es para mostar la tabla de multiplicar con las proporciones proporcionadas</h1>
            
            <table class="table table-dark table-hover table-bordered text-center">
            
            <%
                int resultado = 0;
                
                try {



                
                for (int i=1;i<=Integer.parseInt(request.getParameter("filas"));i++){ %>
                
                <tr>
                    <%
                        for (int j=1;j<=Integer.parseInt(request.getParameter("columnas"));j++){
                            
                        %>
                        
                        <td scope="col"> <%=resultado=i*j %> </td>
                        <%}%>
                </tr>
                
                <%}
                
                } catch(Exception e) {
                 %><h1 class="text-warning">Has puesto caracteres no numéricos, por lo que deberás volver atrás y poner caracteres correctos</h1><%
    System.out.println("ERROR: el valor de tipo Int contiene caracteres no numéricos");

}%>
                
            
            
        </table>
            
                <a href="index.html">Volver</a>
            
        </div>
        
    </body>
</html>
