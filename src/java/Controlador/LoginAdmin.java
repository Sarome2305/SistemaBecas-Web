package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginAdmin extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            // Establecer la conexión con la base de datos
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/becaapp?useSSL=false", "root", "");

            // Consultar la base de datos para verificar las credenciales del usuario
            String sql = "SELECT * FROM admin WHERE UsuarioAdmin = ? AND ContraseñaAdmin = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, password);
            rs = stmt.executeQuery();

            if (rs.next()) {
                // Las credenciales son válidas, redireccionar a la página de inicio de sesión exitoso
                response.sendRedirect("admin.jsp");
            } else {
                // Las credenciales son inválidas, redireccionar a la página de inicio de sesión con error
                response.sendRedirect("LoginAdmin.jsp?no se ha podido iniciar sesion");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            // Redireccionar a la página de inicio de sesión con error
            response.sendRedirect("LoginAdmin.jsp?no se ha podido iniciar sesion");
        } finally {
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
    }
}
