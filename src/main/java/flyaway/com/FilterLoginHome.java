package flyaway.com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebFilter("/FilterLoginHome")
public class FilterLoginHome implements Filter {
	
	public void destroy() {}
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// place your code here
		
		PrintWriter out = ((HttpServletResponse)response).getWriter();
		
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
			ResultSet rs = stmt.executeQuery("select * from passenger_login_signup");
			
			 while(rs.next()){
				 
				 //out.print(rs.getString(2)+" : "+rs.getString(3));
				
				if(uname.equalsIgnoreCase(rs.getString(2)) && upassword.equalsIgnoreCase(rs.getString(3))){
					// pass the request along the filter chain
					/*out.print("in Filter");*/
					chain.doFilter(request, response);
				}
				//else {
					//out.print("Something went wrong");
					//out.print("In filter else part");
					//RequestDispatcher rd = ((HttpServletRequest)request).getRequestDispatcher("LoginError.jsp");
					//rd.forward(request, response);
					//((HttpServletResponse)response).sendRedirect("LoginError.jsp");
				//}
			 }
			 
			

			// 5. close the connection
			stmt.close();
			con.close();
		} catch (Exception e) {
			System.err.println(e);
		}


}
	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("Filter init");
	}
	
}

