package ajp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updatestaff")
public class UpdatestaffServlet extends HttpServlet {
    private static final String query = "SELECT * FROM OutsourcingStaff  WHERE name=?";

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/OutsourcingStaffDB", "root",
                "Yashu@123");
                PreparedStatement preparedStatement = connection.prepareStatement(query);) {
            preparedStatement.setString(1, name);
            if(preparedStatement.executeQuery().next()) {
                // If staff exists, redirect to updatestaff.jsp with the staff details
                response.sendRedirect("updatestaff.jsp?name=" + name);
            } else {
                // If staff does not exist, display an error message
                response.getWriter().println("staff with name " + name + " does not exist.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
