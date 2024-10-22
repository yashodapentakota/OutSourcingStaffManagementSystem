<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View staff</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h2>View Staff Members</h2>
    <table>
        <thead>
            <tr>
                <th>Staff ID</th>
                <th>Name</th>
                <th>Role</th>
                <th>Department</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>contract_start_date</th>
                <th>contract_end_date</th>
                <th>hourly_rate</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="staff" items="${staffs}">
                <tr>
                    <td>${staff.id}</td>
                    <td>${staff.name}</td>
                    <td>${staff.dob}</td>
                    <td>${staff.gender}</td>
                    <td>${staff.email}</td>
                    <td>${staff.phoneNumber}</td>
                    <td>${staff.contract_start_date}</td>
                    <td>${staff.contract_end_date}</td>
                    <td>${staff.hourly_rate}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="Home.html">Home</a>
</body>
</html>
