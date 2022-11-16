<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.DriverManager"
		 import="java.sql.Connection"
		 import="java.sql.Statement"
		 import="java.sql.ResultSet"
 %>

<%

Object fSource = request.getAttribute("fSource");
Object fDestination = request.getAttribute("fDestination");
Object fDateNew = request.getAttribute("fDateNew");
Object fPerson = request.getAttribute("fPerson");

//out.print(fSource+" : "+fDestination+" : "+fDateNew+" : "+fPerson);


try {
	// 1. Load the Driver : which database we are using
	Class.forName("com.mysql.cj.jdbc.Driver");

	// 2. create the connection or establish the connection
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway_simplilearn", "root", "@Neetu2#");

	// 3. create the statement
	Statement stmt = con.createStatement();

	// 4. execute the statement
	ResultSet rs = stmt.executeQuery("select * from flight_details where source='" + fSource + "' and destination='"
	+ fDestination + "' and Date_of_travel='" + fDateNew + "'");
		
	/*out.print(fDateNew);*/
	/*out.print(rs.next());*/
	
	while(rs.next()) {
%>
<form action="register.jsp" method="get">
<div class="table-responsive">
  <table class="table table-dark table-hover">
  	<thead>
    <tr>
      <th scope="col">Flight ID</th>
      <th scope="col">Flight Name</th>
      <th scope="col">Source</th>
      <th scope="col">Destination</th>
      <th scope="col">Date Of Travel</th>
      <th scope="col">Time of Departure</th>
      <th scope="col">Flight Price</th>
      <th scope="col">Book Now</th>
    </tr>
  </thead>
  <tbody class="table-group-divider table-divider-color">
    <tr>
      <th scope="row"><% out.print(rs.getInt(1)); %></th>
      <td><% out.print(rs.getString(2)); %></td>
      <td><% out.print(rs.getString(3)); %></td>
      <td><% out.print(rs.getString(4)); %></td>
      <td><% out.print(rs.getString(5)); %></td>
      <td><% out.print(rs.getString(6)); %></td>
      <td><i class="fa-solid fa-indian-rupee-sign"></i> <% out.print(rs.getString(7)); %></td>
      <td><button type="submit" class="availableFlightBtn"><span>Ticket</span></button></td>
    </tr>
  </tbody>
  </table>
</div>
</form>

<%
}
	boolean val = rs.next();
	/*out.print(val); */
	if(val){}else{
		out.print("No Flight");
	}
	// 5. close the connection
	stmt.close();
	con.close();
	System.out.println("Data Display Successfully...!");
} catch (Exception e) {
	System.err.println(e);
}

%>
