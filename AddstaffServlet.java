package ajp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddstaffServlet")
public class AddstaffServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String query = "INSERT INTO OutsourcingStaff (staff_id,name,role, department, email, phone_number,contract_start_date,contract_end_date,hourly_rate) VALUES (?, ?, ?, ?, ?, ?, ?,?,?)";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String role = request.getParameter("role");
        String department = request.getParameter("department");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String startdate = request.getParameter("startdate")
        String enddate = request.getParameter("enddate");
        String hourrate = request.getParameter("hourrate");

        Date startdate = null;
        try {
            startdate = new SimpleDateFormat("yyyy-MM-dd").parse(startdate);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        Date enddate = null;
        try {
            enddate = new SimpleDateFormat("yyyy-MM-dd").parse(enddate);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        boolean isAddstaffed = false;
        try {
            isAddstaffed = AddstaffOutsourcingStaff(name,role,department,email,phone,startdate,enddate,hourrate);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        if (isAddstaffed) {
            PrintWriter out = response.getWriter();
            out.println("<html>");
            out.println("<body>");
            response.sendRedirect("ViewOutsourcingStaffServlet");
            out.println("<h2>Registration successful!</h2>");
//            out.println("<a href='Login.html'>Login Now</a>");
            out.println("</body>");
            out.println("</html>");
        } else {
            PrintWriter out = response.getWriter();
            out.println("<html>");
            out.println("<body>");
            out.println("<h2>Registration failed!</h2>");
            out.println("<a href='AddstaffOutsourcingStaff.jsp'>Try Again</a>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    private boolean AddstaffOutsourcingStaff(String name, Date dob, String gender, String email, String phone, String address)
            throws SQLException, ClassNotFoundException {
        Connection connection = null;
        PreparedStatement stmt = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/OutsourcingStaffDB", "root", "Yashu@123");
            stmt = connection.prepareStatement(query);
            stmt.setString(1, name);
            stmt.setDate(2, new java.sql.Date(dob.getTime()));
            stmt.setString(3, gender);
            stmt.setString(4, email);
            stmt.setString(5, phone);
            stmt.setString(6, address);
            stmt.setDate(7, new java.sql.Date(System.currentTimeMillis())); // registration date is current date
            int rowsInserted = stmt.executeUpdate();

            return rowsInserted > 0; // Returns true if at least one row was inserted
        } finally {
            if (stmt != null) {
                stmt.close();
            }
            if (connection != null) {
                connection.close();
            }
        }
    }
}