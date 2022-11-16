package flyaway.com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AvailableFlight")
public class AvailableFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String fSource = request.getParameter("fsource");
		String fDestination = request.getParameter("fdestination");
		String fDate = request.getParameter("fdate");
		int fPerson = Integer.parseInt(request.getParameter("fperson"));
		
		SimpleDateFormat dateIn = new SimpleDateFormat("yyyy-mm-dd");
		SimpleDateFormat dateOut = new SimpleDateFormat("dd-mm-yyyy");
		
		String fDateNew = null;
		try {
			Date date = dateIn.parse(fDate);
			fDateNew =  dateOut.format(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		request.setAttribute("fSource", fSource);
		request.setAttribute("fDestination", fDestination);
		request.setAttribute("fDateNew", fDateNew);
		request.setAttribute("fPerson", fPerson);
		RequestDispatcher rd = request.getRequestDispatcher("availableFlight.jsp");
		rd.forward(request, response);
			
		
		// out.print(fSource+" : "+fDestination+" : "+fDateNew+" : "+fPerson);
	}

}
