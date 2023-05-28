<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection, java.sql.Statement, java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager, java.sql.SQLException" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compstible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Becapp</title>
        <link href="StylesLogin/estilo.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <link rel="shortcut icon" href="">
    </head>
    <style>
        body {
            background-color: rgba(0, 0, 0, 0.7);
        }
    </style>
    <body>
        <div class="background-image"></div>

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="#">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2J5SX1XFHXzG5rDph7ber0N5PW70mbJNB6g&usqp=CAU" alt="Logo" style="width: 200px; height: auto;">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="Contacto/Contacto.jsp">Contacto</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./index.jsp">Cerrar Sesión</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <header>
            <div class="head">
                <label for="" class="brand">
                    <a href=""><img src="iconobecas.PNG" alt=""></a>
                </label>
            </div>

            <header class="content header">
                <div class="container" style="color:white;">
                    <h2 class="title">¡Bienvenidos a BECAPP!</h2>
                    <p class="subtitle">Nuestro fin es ayudar a muchos estudiantes <br>
                        que deseen conectarse con entidades financieras o fundaciones <br>
                        que les permitan el acceso a una educación superior, evitando <br>
                        retrasos y falta de oportunidades estudiantiles</p>
                </div>
            </header>
        </header>

        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <div class="col text-center" style="color:white;">
            <h2>¡Quienes somos?</h2>
        </div>
        <hr style="color:white">
        <br><br><br>
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="card">
                        <img src="" class="card-img-top" alt="Logo">
                        <div class="card-body">
                            <h5 class="card-title">Quiénes somos</h5>
                            <p class="card-text">Somos una organización sin fines de lucro dedicada a apoyar la educación de jóvenes de bajos recursos.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <img src="" class="card-img-top" alt="Logo">
                        <div class="card-body">
                            <h5 class="card-title">Misión</h5>
                            <p class="card-text">Nuestra misión es brindar oportunidades educativas a jóvenes de bajos recursos para que puedan alcanzar su máximo potencial académico y profesional.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <img src="" class="card-img-top" alt="Logo">
                        <div class="card-body">
                            <h5 class="card-title">Visión</h5>
                            <p class="card-text">Nuestra visión es ser líderes en la promoción de la igualdad de oportunidades educativas y contribuir al desarrollo de una sociedad más justa y equitativa.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <img src=" " class="card-img-top" alt="Logo">
                        <div class="card-body">
                            <h5 class="card-title">Valores</h5>
                            <p class="card-text">Nuestros valores se basan en la solidaridad, la responsabilidad social y la promoción de la igualdad de oportunidades.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr style="color:white">
        <br>
        <div class="container" style="color:white;">
            <div class="col text-center" style="color:white;">
                <h2>¡Conoce las becas que tenemos para ti!</h2>
            </div>
            <br><br><br>
            <div class="col text-center">
                <a href="Becas.jsp" class="btn btn-outline-light btn-lg">Ver becas</a>
            </div>
        </div>


        <br>
        <footer class="footer bg-dark text-white py-4">
            <div class="container text-center">
                <p>&copy; 2023 BECAPP. Todos los derechos reservados.</p>
            </div>
        </footer>

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    </body>
</html>
