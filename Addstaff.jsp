<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add staff</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }
    h2 {
        text-align: center;
        color: #333;
    }
    form {
        max-width: 400px;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }
    label {
        display: block;
        margin-bottom: 10px;
        font-weight: bold;
        color: #333;
    }
    input[type="text"],
    input[type="email"],
    input[type="date"],
    select {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
    <h2>Add staff</h2>
    <form action="AddServlet" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br><br>
        
        <label for="dob">Role:</label>
    <input type="text" id="role" name="role" required><br>
    <label for="gender">Department:</label>
    <input type="text" id="department" name="department" required><br>
    <label for="email">Email:</label>
    <input type="email" id="email" name="email"><br>
    <label for="phoneNumber">Phone Number:</label>
    <input type="text" id="phoneNumber" name="phoneNumber"><br>
    <label for="address">contract Start Date:</label>
    <input type="text" id="contract_start_date" name="contract_start_date"><br>
    <label for="registrationDate">contract End Date:</label>
    <input type="text" id="contract_end_date" name="contract_end_date" required><br>
    <label for="registrationDate">Hourly Rate:</label>
    <input type="text" id="hourly_rate " name="hourly_rate " required><br><br><br>
        
        <input type="submit" value="Add">
    </form>
</body>
</html>
