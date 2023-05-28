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

public class RegistroBecas extends HttpServlet {

    private static final long serialVersionUID = 1L;
    
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id = request.getParameter("id");
        String nombre = request.getParameter("nombre");

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/becaapp?useSSL=false&serverTimezone=UTC",
                    "root", "");

            System.out.println("Conexión exitosa con la base de datos");

            String sql = "INSERT INTO becas (IdBecas, NomBecas) VALUES (?, ?)";

            stmt = conn.prepareStatement(sql);
            stmt.setString(1, id);
            stmt.setString(2, nombre);
  
            stmt.executeUpdate();

            // Redireccionar con mensaje de éxito
            response.sendRedirect("RegisBeca.jsp?mensaje=Beca registrada exitosamente");

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();

            // Redireccionar con mensaje de error
            response.sendRedirect("RegisBeca.jsp?mensaje=Error al Registrar");

        } finally {
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
    }
}