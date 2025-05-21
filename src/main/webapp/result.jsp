<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

/* Database Results Table Styling */
body {
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  background-color: #f5f7fa;
  color: #333;
  line-height: 1.6;
  padding: 20px;
}

/* Container for the results */
.results-container {
  max-width: 900px;
  margin: 20px auto;
  padding: 15px;
  background-color: #fff;
  border-radius: 8px;
  box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

/* Table styling */
.employee-table {
  width: 100%;
  border-collapse: collapse;
  margin-top: 10px;
  background-color: #fff;
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
}

.employee-table th {
  background-color: #4a90e2;
  color: white;
  font-weight: 600;
  text-align: left;
  padding: 12px 15px;
  border-bottom: 2px solid #357abf;
}

.employee-table td {
  padding: 10px 15px;
  border-bottom: 1px solid #e0e0e0;
}

.employee-table tr:nth-child(even) {
  background-color: #f8f9fb;
}

.employee-table tr:hover {
  background-color: #f1f5fb;
}

.employee-table tr:last-child td {
  border-bottom: none;
}

/* Styling for specific columns (adjust as needed) */
.col-emp-no {
  width: 15%;
}

.col-emp-name {
  width: 30%;
}

.col-age {
  width: 15%;
  text-align: center;
}

.col-salary {
  width: 20%;
  text-align: right;
}

/* Error message styling */
.error-message {
  color: #d9534f;
  background-color: #fdf7f7;
  border: 1px solid #f4cecd;
  border-radius: 4px;
  padding: 15px;
  margin: 20px 0;
  font-size: 14px;
}

/* Page title */
.page-title {
  color: #333;
  margin-bottom: 20px;
  font-size: 24px;
  text-align: center;
}

/* No results message */
.no-results {
  text-align: center;
  padding: 20px;
  color: #777;
  font-style: italic;
}


</style>
</head>
<body>


<%
  
try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_db","root","Pradhap@123");
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from employees");
    
    // Start the container and table
    out.println("<div class='results-container'>");
    out.println("<h2 class='page-title'>Employee Records</h2>");
    out.println("<table class='employee-table'>");
    
    // Table header
    out.println("<thead>");
    out.println("<tr>");
    out.println("<th class='col-emp-no'>Employee No</th>");
    out.println("<th class='col-emp-name'>Employee Name</th>");
    out.println("<th class='col-age'>Age</th>");
    out.println("<th class='col-salary'>Salary</th>");
    out.println("</tr>");
    out.println("</thead>");
    
    // Table body
    out.println("<tbody>");
    
    boolean hasRecords = false;
    
    while(rs.next()) {
        hasRecords = true;
        out.println("<tr>");
        out.println("<td>" + rs.getString(1) + "</td>");
        out.println("<td>" + rs.getString(2) + "</td>");
        out.println("<td>" + rs.getString(3) + "</td>");
        out.println("<td>" + rs.getString(4) + "</td>");
        out.println("</tr>");
    }
    
    if (!hasRecords) {
        out.println("<tr><td colspan='4' class='no-results'>No employee records found</td></tr>");
    }
    
    out.println("</tbody>");
    out.println("</table>");
    out.println("</div>");
    
    // Close resources
    rs.close();
    st.close();
    con.close();
}
catch(Exception e) {
    out.println("<div class='error-message'>");
    out.println("Error: " + e.getMessage());
    out.println("</div>");
}
  
  
  %>

</body>
</html>