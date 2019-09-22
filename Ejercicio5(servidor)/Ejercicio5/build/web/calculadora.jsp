<%-- 
    Document   : calculadora.jsp
    Created on : 21 sept. 2019, 18:52:20
    Author     : carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio 5</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        
        <div class="container">
            
            <h1>Esta página es para mostar el resultado de la operación seleccionada en la página anterior</h1>
            
            <div>
            
            <%
                
                try {
                
                int resultado = 0;
                
                

                int x = 0;
                int y = 0;
                String operacion = "";
                
                x=Integer.parseInt(request.getParameter("primerNumero"));
                y=Integer.parseInt(request.getParameter("segundoNumero"));
                operacion = request.getParameter("operacion");
                
                switch(operacion){

                 
                case "suma" :
                    %><h2 class="text-danger"> La suma de <%=x %> y <%=y %> es: <%=resultado=x+y %> </h2> <%
                break; 
   
                case "resta" :
                %><h2 class="text-danger"> La resta de <%=x %> y <%=y %> es: <%=resultado=x-y %>  </h2> <%
                break; 
                
                case "multiplicacion" :
                %><h2 class="text-danger"> La multiplicación de <%=x %> y <%=y %> es: <%=resultado=x*y %> </h2> <%
                break; 
                
                case "division" :
                %><h2 class="text-danger"> La división de <%=x %> y <%=y %> es: <%=resultado=x/y %> </h2> <%
                break; 
                }      

                } catch(Exception e) {
                 %><h1 class="text-warning">Has puesto caracteres no numéricos, por lo que deberás volver atrás y poner caracteres correctos</h1><%
    System.out.println("ERROR: el valor de tipo Int contiene caracteres no numéricos");

}
                        %>
                        
                        
                        
               
                
              
            
            </div>
            
                <a href="index.html">Volver</a>
            
        </div>
        
    </body>
</html>
