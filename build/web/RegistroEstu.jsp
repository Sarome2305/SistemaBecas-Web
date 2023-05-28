<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Formulario de Registro</title>
        <link rel="stylesheet" href="StylesLogin/style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
    <style>
        body {
            font-family: Arial, sans-serif;

            background-image: url(https://images.pexels.com/photos/8199562/pexels-photo-8199562.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;

        }
    </style>
    <body>
        <h1>Registrate</h1>
        <form action="Estudiante" method="post"> 

            <label for="user">Usuario:</label>
            <input type="text" id="user" name="user" placeholder="Ingrese su  Usuario" required><br>

            <label for="pass">Contraseña:</label>
            <input type="text" id="pass" name="pass" placeholder="Ingrese su contraseña" required><br>


            <input type="submit" value="Enviar">
            <div class="Registrate">
                <div>
                    
                    <a href="./iniciodesesion.jsp" class="btn btn-outline-dark btn-sm" style="text-decoration:none">Ya tienes una cuenta? Inicia sesión</a>
                    <a href="./Perfiles/perfiles.jsp" class="btn btn-outline-dark btn-sm" style="text-decoration:none">Regresar</a>

                </div>
            </div>
        </form>


    </body>
</html>
