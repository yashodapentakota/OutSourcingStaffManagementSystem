<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Update staff Details</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 2em;
    }
    
    h2 {
      text-align: center;
      margin-bottom: 1em;
    }
    
    form {
      display: flex;
      flex-direction: column;
      width: 50%;
      margin: 0 auto;
    }
    
    label {
      margin-bottom: 5px;
    }
    
    input[type="text"],
    input[type="email"],
    input[type="date"] {
      width: 100%;
      padding: 8px;
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
      box-sizing: border-box;
    }
    
    input[type="submit"] {
      background-color: #007bff;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 3px;
      cursor: pointer;
      font-size: 16px;
    }
    
    input[type="submit"]:hover {
      background-color: #0056b3;
    }
    
    a {
      text-decoration: none;
      color: #007bff;
      margin-top: 10px;
      text-align: center;
    }
  </style>
</head>
<body>
  <h2>Update staff Details</h2>
  <form action="updatestaffAction" method="post">
    <label for="name">Name:</label>
            <input type="text" id="name" name="name" required><br>
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
    <input type="text" id="hourly_rate " name="hourly_rate " required><br>
    <input type="submit" value="Update">
  </form>
  <a href="Welcome.jsp">Home</a>
</body>
</html>
