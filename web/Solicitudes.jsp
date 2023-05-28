<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.Connection, java.sql.Statement, java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager, java.sql.SQLException" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Tabla de Solicitudes</title>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f8f9fa;

                background-image: url(https://images.pexels.com/photos/8199562/pexels-photo-8199562.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);
                background-size: cover;
                background-position: center center;
                background-repeat: no-repeat;
                height: 70vh;
                background-color: rgba(0, 0, 0, 0.7);
            }

            .container {
                margin-top: 50px;
            }

            .table {
                background-color: white;
            }

            .btn-aceptar {
                background-color: #28a745;
                color: white;
            }

            .btn-rechazar {
                background-color: #dc3545;
                color: white;
            }

            .btn-group {
                display: flex;
                justify-content: center;
            }

            .btn-group a {
                margin: 5px;
            }
        </style>
<script>
    $(document).ready(function() {
        // Función para eliminar una fila al hacer clic en el botón "Rechazar"
        $(".btn-rechazar").click(function() {
            $(this).closest("tr").remove();
        });
    });
</script>

    </head>
    <body>
        <div class="container">
            <h1 class="text-center" style="color:white">Tabla de Solicitudes</h1>
            <table class="table table-striped">
                <thead class="thead-dark">
                    <tr>
                        <th>Nombre</th>
                        <th>ID Estudiante</th>
                        <th>Email</th>
                        <th>Teléfono</th>
                        <th>Sexo</th>
                        <th>Nivel de Estudio</th>
                        <th>Carrera</th>
                        <th>Rendimiento</th>
                        <th>Beca</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <%-- Establece la conexión a la base de datos --%>
                    <%
                        Connection conn = null;
                        Statement stmt = null;
                        ResultSet rs = null;

                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            conn = DriverManager.getConnection("jdbc:mysql://localhost/becaapp?useSSL=false&serverTimezone=UTC",
                                    "root", "");


                            stmt = conn.createStatement();
                            String sql = "SELECT * FROM solicitud";
                            rs = stmt.executeQuery(sql);

                            while (rs.next()) {
                                String nombre = rs.getString("nombre");
                                String idEstudiante = rs.getString("idEstudiante");
                                String email = rs.getString("email");
                                String telefono = rs.getString("telefono");
                                String sexo = rs.getString("sexo");
                                String nivelEstudio = rs.getString("nivelEstudio");
                                String carrera = rs.getString("carrera");
                                String rendimiento = rs.getString("rendimiento");
                                String beca = rs.getString("beca");

                                out.println("<tr>");
                                out.println("<td>" + nombre + "</td>");
                                out.println("<td>" + idEstudiante + "</td>");
                                out.println("<td>" + email + "</td>");
                                out.println("<td>" + telefono + "</td>");
                                out.println("<td>" + sexo + "</td>");
                                out.println("<td>" + nivelEstudio + "</td>");
                                out.println("<td>" + carrera + "</td>");
                                out.println("<td>" + rendimiento + "</td>");
                                out.println("<td>" + beca + "</td>");
                                out.println("<td>" +
                                        "<div class=\"btn-group\">" +
                                        "<a href=\"mailto:" + email + "?subject=Solicitud de beca aceptada&amp;body=Estimado/a " + nombre + ",%0D%0A%0D%0A¡Felicidades! Nos complace informarle que su solicitud de beca ha sido aceptada. Le damos la bienvenida a nuestro programa de becas y esperamos que sea una experiencia enriquecedora.%0D%0A%0D%0AAtentamente,%0D%0AEl equipo de Becapp\" class=\"btn btn-outline-dark btn-lg\">Aceptar</a>" +
                                        "<a href=\"mailto:" + email + "?subject=Solicitud de beca rechazada&amp;body=Estimado/a " + nombre + ",%0D%0A%0D%0ALamentamos informarle que su solicitud de beca no ha sido aprobada en esta ocasión. Agradecemos su interés en nuestro programa de becas y le animamos a que siga participando en futuras convocatorias.%0D%0A%0D%0AAtentamente,%0D%0AEl equipo de Becapp\" class=\"btn btn-outline-dark btn-lg btn-rechazar\">Rechazar</a>" +
                                        "</div>" +
                                        "</td>");
                                out.println("</tr>");
                            }
                        } catch (SQLException | ClassNotFoundException e) {
                            e.printStackTrace();
                        } finally {

                            if (rs != null) rs.close();
                            if (stmt != null) stmt.close();
                            if (conn != null) conn.close();
                        }
                    %>
                </tbody>
            </table>
                                <a href="admin.jsp" class="btn btn-outline-dark btn-lg">Regresar</a>
        </div>
    </body>
</html>
