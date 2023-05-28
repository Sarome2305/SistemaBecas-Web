package Controlador;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class RegistrarEstu extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nombre = request.getParameter("nombre");
        String id = request.getParameter("id");
        String email = request.getParameter("email");
        String telefono = request.getParameter("telefono");
        String sexo = request.getParameter("sexo");
        String nivelEstudio = request.getParameter("nivelEstudio");
        String carrera = request.getParameter("carrera");
        String rendimiento = request.getParameter("rendimiento");
        String beca = request.getParameter("beca");

        Connection conn = null;
        PreparedStatement stmt = null;

        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/becaapp?useSSL=false&serverTimezone=UTC",
                    "root", "");

            System.out.println("Conexión exitosa con la base de datos");

            String sql = "INSERT INTO solicitud (nombre, IdEstudiante, email, telefono, sexo, nivelEstudio, carrera, rendimiento, beca) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

            stmt = conn.prepareStatement(sql);
            stmt.setString(1, nombre);
            stmt.setString(2, id);
            stmt.setString(3, email);
            stmt.setString(4, telefono);
            stmt.setString(5, sexo);
            stmt.setString(6, nivelEstudio);
            stmt.setString(7, carrera);
            stmt.setString(8, rendimiento);
            stmt.setString(9, beca);

            stmt.executeUpdate();

            // Redireccionar con mensaje de éxito
            response.sendRedirect("Congrats.jsp");

        } catch (ClassNotFoundException | SQLException e)
        {
            e.printStackTrace();

            // Redireccionar con mensaje de error
            response.sendRedirect("formulario.jsp?mensaje=Error al Registrar");

        } finally
        {
            if (stmt != null)
            {
                try
                {
                    stmt.close();
                } catch (SQLException e)
                {
                    e.printStackTrace();
                }
            }
            if (conn != null)
            {
                try
                {
                    conn.close();
                } catch (SQLException e)
                {
                    e.printStackTrace();
                }
            }
        }
    }
}
