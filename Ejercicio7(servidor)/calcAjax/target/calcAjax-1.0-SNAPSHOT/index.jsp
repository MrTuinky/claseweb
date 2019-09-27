<%@page import="com.carloshernandezweb.ej7.servlet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejercicio7</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script type="text/javascript">

            $(document).ready(function () {
                $("#submit").click(function () {
                    op1 = $("#op1").val(),
                            op2 = $("#op2").val(),
                            operando = $("select option:selected").val(),
                            $.ajax({
                                url: "servlet?op1=" + op1 + "&op2=" + op2 + "&operacion=" + operando,
                                method: "GET",
                                contentType: "application/json",
                            }).done(function (resultado) {
                        console.log(resultado);
                        if (operando == 1) {
                            $("#resultado").empty().append(resultado.op1 + " + " + resultado.op2 + " = " + resultado.resultado);
                        } else if (operando == 2) {
                            $("#resultado").empty().append(resultado.op1 + " - " + resultado.op2 + " = " + resultado.resultado);
                        } else if (operando == 3) {
                            $("#resultado").empty().append(resultado.op1 + " * " + resultado.op2 + " = " + resultado.resultado);
                        } else if (operando == 4) {
                            $("#resultado").empty().append(resultado.op1 + " / " + resultado.op2 + " = " + resultado.resultado);
                        }
                    });
                    return false;
                });

            });

        </script>
    </head>
    <body>
        <div class="container">
            <div id="header">
                <h1>Ejercicio 7. Calculadora JSON</h1>
            </div>
            <div id="main">
                <div class="formulario">
                    <form>
                        <div class="form-group">
                            <label for="formGroupExampleInput">Primer Número</label>
                            <input type="text" class="form-control" id="op1" placeholder="Introduce el primer número" name="op1">
                        </div>
                        <div class="form-group">
                            <label for="formGroupExampleInput2">Segundo Número</label>
                            <input type="text" class="form-control" id="op2" placeholder="Inrtoduce el segundo número" name="op2">
                        </div>
                        <div class="form-group">
                            <label for="inputState"></label>
                            <select id="inputState" class="form-control" name="operacion">
                                <option selected value="1">Suma</option>
                                <option value="2">Resta</option>
                                <option value="3">Multiplicación</option>
                                <option value="4">División</option>
                            </select>
                        </div>

                        <div class="centrado">
                            <button id="submit" class="btn btn-primary">Calcular</button>
                        </div>

                    </form>

                    <div class="resultado">      
                        <h2>Resultado:</h2> 
                        <h2 id="resultado"></h2>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
