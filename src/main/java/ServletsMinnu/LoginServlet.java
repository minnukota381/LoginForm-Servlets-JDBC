package ServletsMinnu;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String URL = "jdbc:mysql://localhost:3306/minuuu";
    private static final String USER = "root";
    private static final String PASSWORD = "12345";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            // Load the JDBC driver (optional with modern JDBC drivers)
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish the connection using DriverManager
            try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD)) {
                String sql = "SELECT * FROM minnu WHERE username = ? AND password = ?";
                try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                    stmt.setString(1, username);
                    stmt.setString(2, password);
                    try (ResultSet rs = stmt.executeQuery()) {
                        if (rs.next()) {
                            HttpSession session = request.getSession();
                            session.setAttribute("username", username);
                            response.sendRedirect("welcome");
                        } else {
                            response.sendRedirect("index.jsp?error=true");
                        }
                    }
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.sendRedirect("index.jsp?error=true");
        }
    }
}
