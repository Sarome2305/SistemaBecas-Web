package Controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EliminarBecaServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtén el ID de la beca a eliminar desde el parámetro de la solicitud
        int idBeca = Integer.parseInt(request.getParameter("idBeca"));

        // Llama al método eliminarBeca para ejecutar la eliminación
        eliminarBeca(idBeca);

        // Redirige a la página principal u otra página de tu elección
        response.sendRedirect("RegisBeca.jsp?=Se ha eliminado una Beca");
    }

    private void eliminarBeca(int idBeca) {
        try {
            // Establece la conexión a la base de datos
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/becaapp?useSSL=false&serverTimezone=UTC",
                    "root", "");

            // Crea la consulta SQL para eliminar la beca
            String sql = "DELETE FROM becas WHERE IdBecas = ?";

            // Crea una declaración preparada para ejecutar la consulta
            PreparedStatement statement = conn.prepareStatement(sql);

            // Establece el valor del parámetro ID de la beca
            statement.setInt(1, idBeca);

            // Ejecuta la consulta
            statement.executeUpdate();

            // Cierra la conexión y los recursos
            statement.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
            // Maneja cualquier excepción de base de datos aquí
        }
    }
}
