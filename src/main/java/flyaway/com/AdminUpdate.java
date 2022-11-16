package flyaway.com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdminUpdate")
public class AdminUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String oldPass = request.getParameter("apassold");
		String newPass = request.getParameter("apassnew");

		try {
			// 1. Load the Driver : which database we are using
			Class.forName("com.mysql.cj.jdbc.Driver");

			// 2. create the connection or establish the connection
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway_simplilearn","root","@Neetu2#");

			// 3. create the statement
			PreparedStatement stmt=con.prepareStatement("update admin_login set Admin_Password= ? where Admin_Password= ?");

			stmt.setString(1, newPass);
			stmt.setString(2, oldPass);

			// 4. execute the statement
			boolean res = stmt.execute();
			System.out.println(res);
			
			if(!res) {
				out.print("<script>alert('Updated');</script>");
				RequestDispatcher rd = request.getRequestDispatcher("AdminPasswordUpdate.jsp");
				rd.include(request, response);
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
