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


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		String PassenName = request.getParameter("pname");
		String PassenEmail = request.getParameter("pemail");
		String PassenAge = request.getParameter("page");
		String PassenGender = request.getParameter("pgender");
		String PassenNumberOfPerson = request.getParameter("pperson");
		String PassenMobile = request.getParameter("pmobnumber");
		String PassenIdCardType = request.getParameter("pidcardtype");
		String PassenIdCardNumber = request.getParameter("idcardnumber");
		int PassenFlightId = Integer.parseInt(request.getParameter("pflightid"));
		
		try {
			// 1. Load the Driver : which database we are using
			Class.forName("com.mysql.cj.jdbc.Driver");

			// 2. create the connection or establish the connection
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway_simplilearn","root","@Neetu2#");

			// 3. create the statement
			PreparedStatement stmt=con.prepareStatement("insert into passenger_details values(0, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

			
			stmt.setString(1, PassenName);
			stmt.setString(2, PassenEmail);
			stmt.setString(3, PassenAge);
			stmt.setString(4, PassenGender);
			stmt.setString(5, PassenNumberOfPerson);
			stmt.setString(6, PassenMobile);
			stmt.setString(7, PassenIdCardType);
			stmt.setString(8, PassenIdCardNumber);
			stmt.setInt(9, PassenFlightId);

			// 4. execute the statement
			stmt.execute();

			// 5. close the connection
			stmt.close();
			con.close();
			
			request.setAttribute("PassenIdCardNumber", PassenIdCardNumber);
			RequestDispatcher rd = request.getRequestDispatcher("FlightRegisterSummary.jsp");
			rd.forward(request, response);
			System.out.println("Data Inserted Successfully...!");
		} catch (Exception e) {
			System.err.println(e);
		}

		
	}

}
