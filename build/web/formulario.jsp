<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Formulario de Registro</title>
        <link rel="stylesheet" href="StylesLogin/style.css">
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
        <h1>¡Falta poco!</h1>
        <form action="RegistrarEstu" method="post"> 
            <label for="nombre">Nombre completo:</label>
            <input type="text" id="nombre" name="nombre" placeholder="Ingrese su nombre completo" required><br>

            <label for="id">Identificación:</label>
            <input type="text" id="id" name="id" placeholder="Ingrese su número de identidad" required><br>

            <label for="email">Correo electrónico:</label>
            <input type="text" id="email" name="email" placeholder="Ingrese su correo electrónico" required><br>

            <label for="telefono">Número de teléfono:</label>
            <input type="text" id="telefono" name="telefono" placeholder="Ingrese su número de teléfono" required><br>


            <label>Sexo:</label><br>
            <input type="radio" name="sexo" value="Masculino">Masculino<br>
            <input type="radio" name="sexo" value="Femenino">Femenino<br>
            <input type="radio" name="sexo" value="Otros">Otro<br>

            <label>Nivel de Estudio:</label>
            <select name="nivelEstudio" id="nivelEstudio">
                <option value="Educacion Basica">Educación Básica</option>
                <option value="Educacion Media">Educación Media</option>
                <option value="Tecnologico">Tecnológico</option>
                <option value="Profesional">Profesional</option>
                <option value="Especialista">Especialista</option>
                <option value="Maestria">Maestría</option>
                <option value="Doctorado">Doctorado</option>
            </select><br>

            <label for="carrera">Carrera:</label>
            <select name="carrera" id="carrera">
                <option value="Administración de empresas">Administración de empresas</option>
                <option value="Ingeniería industrial">Ingeniería industrial</option>
                <option value="Ingeniería de sistemas computación">Ingeniería de sistemas computación</option>
                <option value="Contaduría">Contaduría</option>
                <option value="Tecnólogo en gestión administrativa">Tecnólogo en gestión administrativa</option>
                <option value="Administración de negocios">Administración de negocios</option>
                <option value="Ingeniería electrónica">Ingeniería electrónica</option>
                <option value="Administración financiera">Administración financiera</option>
                <option value="Ingeniería de telecomunicaciones">Ingeniería de telecomunicaciones</option>
                <option value="Arquitectura">Arquitectura</option>
                <option value="Ingeniería Petrolera">Ingeniería Petrolera</option>
                <option value="Ingeniería Ambiental">Ingeniería Ambiental</option>
                <option value="Ingeniería Civil">Ingeniería Civil</option>
                <option value="Sociología">Sociología</option>
                <option value="Otro">Otro</option>
            </select><br>

            <label for="rendimiento">Rendimiento académico:</label>
            <select name="rendimiento" id="rendimiento">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select><br>
            <label for="beca">NOmbre de beca a la que aspiras:</label>
            <input type="text" id="beca" name="beca" placeholder="Tipo de Beca" required><br>

            <input type="submit" value="Enviar" onclick="redirigir()">
            <script>
                function redirigir() {
                    var urlDestino = "Congrats.jsp";

                    window.location.href = urlDestino;
                }
            </script>
            <a href="./iniciodesesion.jsp">Regresar</a>
        </form>
    </body>
</html>
