<%-- 
    Document   : admin
    Created on : 20/05/2023, 6:57:42 p. m.
    Author     : camil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perfil del aministrador de becas</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

        <link rel="stylesheet" href="./ADMIN/admin.css">
    </head>

    <body>
        <style>
            body {
                font-family: Arial, sans-serif;

                background-image: url(https://images.pexels.com/photos/8199562/pexels-photo-8199562.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);
                background-size: cover;
                background-position: center center;
                background-repeat: no-repeat;

            }
            a{
                text-decoration: none;
            }
        </style>
        <div class="container">
            <div class="profile-card">
                <div class="profile-img"></div>
                <div class="profile-info">

                    <h2>BECAAP</h2>
                    <h3>Administrador de becas</h3>
                    <div class="button-container">
                        <a href="RegisBeca.jsp" class="register-btn">Registrar Becas</a>
                        <a href="Solicitudes.jsp" class="approve-btn">Solicitudes</a>
                        <a href="./empresa/empresa.jsp" class="companies-btn">Empresas</a>
                        <a href="LoginAdmin.jsp" class="deny-btn">Salir</a>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>
