<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.Connection, java.sql.Statement, java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager, java.sql.SQLException" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Formulario de Registro y Tabla de Becas</title>
        <!-- Agrega los enlaces a los archivos CSS de Bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <style>
            /* Estilos personalizados */
            body {
                font-family: Arial, sans-serif;
                padding-top: 40px;
                background-color: #f8f9fa;

                background-image: url(https://images.pexels.com/photos/8199562/pexels-photo-8199562.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);
                background-size: cover;
                background-position: center center;
                background-repeat: no-repeat;
                background-position: absolute;
            }

            .container {
                max-width: 800px;
            }

            h1 {
                text-align: center;
                margin-bottom: 30px;
            }

            .card {
                background-color: #fff;
                border-radius: 5px;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
                padding: 20px;
                margin-bottom: 20px;
            }

            .table {
                background-color: #fff;
                border-radius: 5px;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
            }

            .table thead th {
                background-color: #343a40;
                color: #fff;
                border-color: #343a40;
            }

            .table tbody td {
                border-color: #dee2e6;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="card">
                <h1>Registro de Becas</h1>
                <form action="RegistroBecas" method="POST"> 
                    <div class="form-group">
                        <label for="id">Código de Beca:</label>
                        <input type="text" class="form-control" id="id" name="id" placeholder="Ingrese el código de la beca" required>
                    </div>
                    <div class="form-group">
                        <label for="nombre">Nombre de Beca:</label>
                        <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Ingrese el nombre de la beca" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Registrar</button>
                    <a href="admin.jsp" class="btn btn-secondary">Atrás</a>
                </form>
            </div>

            <div class="card">
                <h1>Becas</h1>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Código de Beca</th>
                            <th>Nombre de Beca</th>
                            <th>Acciones</th> <!-- Nueva columna para las acciones -->
                        </tr>
                    </thead>
                    <tbody>
                        <%-- Establece la conexión a la base de datos --%>
                        <%
                            Connection conn = null;
                            Statement stmt = null;
                            ResultSet rs = null;

                            try {
                                // Establece la conexión a la base de datos
                                Class.forName("com.mysql.jdbc.Driver");
                                conn = DriverManager.getConnection("jdbc:mysql://localhost/becaapp?useSSL=false&serverTimezone=UTC",
                                        "root", "");

                                // Ejecuta la consulta SQL para obtener los datos
                                stmt = conn.createStatement();
                                String sql = "SELECT * FROM becas";
                                rs = stmt.executeQuery(sql);

                                // Itera sobre el ResultSet y genera las filas de la tabla
                                while (rs.next()) {
                                    int id = rs.getInt("IdBecas");
                                    String nombre = rs.getString("NomBecas");
                                    // Obtén más campos según tus datos

                        %>
                        <tr>
                            <td><%= id %></td>
                            <td><%= nombre %></td>
                            <td>
                                <form action="EliminarBecaServlet" method="POST"> <!-- Formulario para enviar la solicitud de eliminación -->
                                    <input type="hidden" name="idBeca" value="<%= id %>"> <!-- Campo oculto con el ID de la beca -->
                                    <button type="submit" class="btn btn-danger btn-sm">Eliminar</button> <!-- Botón de eliminación -->
                                </form>
                            </td>
                        </tr>
                        <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    // Cierra los recursos
                    if (rs != null) {
                        try {
                            rs.close();
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                    }
                    if (stmt != null) {
                        try {
                            stmt.close();
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                    }
                    if (conn != null) {
                        try {
                            conn.close();
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                    }
                }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
