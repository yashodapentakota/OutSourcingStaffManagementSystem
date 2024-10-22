<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
   // Don't create if not existing
    String user = (String) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("Login.html"); // Redirect to login if not logged in
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Welcome, <%= user %>!</title>
    <style>
        /* Optional: Style your menu bar here */
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        li {
            float: left;
        }

        a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        /* Add hover effects, etc. as needed */
    </style>
</head>
<body>
    <ul>
        <li><a href="">Home</a></li>

        <li><a href='ViewstaffServlet'>View staffs</a></li>
        <li><a href="registerstaff.jsp">Add staff</a></li>
        <li><a href="updatestaffName.jsp">Update staff</a></li>
       <li><a href="deletestaff.jsp">Delete staff</a></li>
        <li style="float:right"><a href="LogoutServlet">Logout</a></li>
    </ul>

</body>
</html>
