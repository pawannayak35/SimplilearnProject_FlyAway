package flyaway.com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String uname = request.getParameter("uname");
		String upassword = request.getParameter("upass");

		try {
			// 1. Load the Driver : which database we are using
			Class.forName("com.mysql.cj.jdbc.Driver");

			// 2. create the connection or establish the connection
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway_simplilearn","root","@Neetu2#");

			// 3. create the statement
			Statement stmt=con.createStatement();
			
			// 4. execute the statement
			ResultSet	rs=stmt.executeQuery("select * from admin_login;");
			
			 while(rs.next())
			 {
				
				if(uname.equalsIgnoreCase(rs.getString(2)) && upassword.equalsIgnoreCase(rs.getString(3)))
					{
						RequestDispatcher rd= request.getRequestDispatcher("HomeAdmin.jsp");
						rd.forward(request, response);
					}
					else {
						out.print("<script>alert('The username or password you have entered is invalid.');</script>");
						RequestDispatcher rd=request.getRequestDispatcher("admin_login.jsp");
						rd.include(request, response);
					} 
			 }
			

			// 5. close the connection
			stmt.close();
			con.close();
			System.out.println("Data Inserted Successfully...!");
		} catch (Exception e) {
			System.err.println(e);
		}

	}

}
