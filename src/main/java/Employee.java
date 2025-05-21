

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 * Servlet implementation class Employee
 */
@WebServlet("/Employee")
public class Employee extends HttpServlet {
	
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter pw = response.getWriter();
		
		String a  = request.getParameter("empno");
		
		String b = request.getParameter("empname");
		
		
		String c = request.getParameter("age");
		
		String d = request.getParameter("salary");
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_db","root","Pradhap@123");
			Statement st = con.createStatement();
			st.executeUpdate("INSERT INTO employees(empno,empname,age,salary) VALUES ('"+a+"','"+b+"','"+c+"','"+d+"')");
			
			response.sendRedirect("result.jsp");
		} catch (Exception e) {
			
			pw.print(e);
			
			
		}
		
		
		
		
		
	}

}
