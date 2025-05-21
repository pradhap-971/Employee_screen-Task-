<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 <style type="text/css">
 
 /* Employee Form Styling */
body {
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  background-color: #f5f7fa;
  color: #333;
  line-height: 1.6;
  padding: 20px;
}

form {
  max-width: 500px;
  margin: 20px auto;
  padding: 25px;
  background-color: #fff;
  border-radius: 8px;
  box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

label {
  display: block;
  margin-bottom: 5px;
  font-weight: 600;
  color: #444;
  font-size: 15px;
}

input[type="text"] {
  width: 100%;
  padding: 10px;
  margin-bottom: 15px;
  border: 1px solid #ddd;
  border-radius: 4px;
  box-sizing: border-box;
  font-size: 15px;
  transition: border-color 0.3s;
}

input[type="text"]:focus {
  border-color: #4a90e2;
  outline: none;
  box-shadow: 0 0 5px rgba(74, 144, 226, 0.3);
}

input[type="submit"] {
  background-color: #4a90e2;
  color: white;
  border: none;
  padding: 12px 20px;
  border-radius: 4px;
  cursor: pointer;
  font-size: 16px;
  font-weight: 600;
  transition: background-color 0.3s;
}

input[type="submit"]:hover {
  background-color: #357abf;
}

/* Optional: Add a form title */
.form-title {
  text-align: center;
  margin-bottom: 20px;
  font-size: 24px;
  color: #333;
}

/* Optional: Add a subtle separator between form fields */
.form-separator {
  height: 1px;
  background-color: #eee;
  margin: 15px 0;
}
 
 
 
 </style>

</head>
<body>
<h2>Enter Employee Details</h2>
    <form action="Employee" method="post">
        <label>Employee No:</label>
        <input type="text" name="empno"/><br/><br/>
        <label>Employee Name:</label>
        <input type="text" name="empname"/><br/><br/>
        <label>Age:</label>
        <input type="text" name="age"/><br/><br/>
        <label>Salary:</label>
        
        <input type="text" name="salary"/><br/><br/>
        <input type="submit" value="Submit"/>
    </form>
</body>
</html>