<%-- 
    Document   : iniciodesesion
    Created on : 04-abr-2023, 14:35:52
    Author     : STEBAN ROMERO
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="StylesLogin/iniciodesesion.css">
        <title>Iniciar sesión</title>
        <style>
            body {
                font-family: Arial, sans-serif;

                background-image: url(https://images.pexels.com/photos/8199562/pexels-photo-8199562.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);
                background-size: cover;
                background-position: center center;
                background-repeat: no-repeat;
                height: 70vh;
                background-color: rgba(0, 0, 0, 0.7);
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>¡Bienvenido a Becapp!</h1>
            <h2>Inicie sesión</h2>
            <form action="LoginAdmin" method="post">
                <div class="form-group">
                    <label for="username">Usuario:</label>
                    <input type="text" id="username" name="username">
                </div>
                <div class="form-group">
                    <label for="password">Contraseña:</label>
                    <input type="password" id="password" name="password">
                </div>
                <div class="form-group">
                    <input type="submit" value="Iniciar sesión">
                </div>
            </form>
            <div class="Registrate">
                <div>
     
                    <a href="./Perfiles/perfiles.jsp">Regresar</a>
                </div>
            </div>

    </body>
</html>