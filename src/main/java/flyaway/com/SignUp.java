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


@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
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
			PreparedStatement stmt=con.prepareStatement("insert into passenger_login_signup values(0,?,?)");

			stmt.setString(1, uname);
			stmt.setString(2, upassword);

			// 4. execute the statement
			boolean res = stmt.execute();
			System.out.println(res);
			
			if(!res) {
				RequestDispatcher rd = request.getRequestDispatcher("LoginMsgForSignUp.jsp");
				rd.forward(request, response);
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
