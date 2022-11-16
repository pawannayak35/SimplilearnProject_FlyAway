<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.DriverManager"
		 import="java.sql.Connection"
		 import="java.sql.Statement"
		 import="java.sql.ResultSet"
 %>

<%

try {
	// 1. Load the Driver : which database we are using
	Class.forName("com.mysql.cj.jdbc.Driver");

	// 2. create the connection or establish the connection
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway_simplilearn", "root", "@Neetu2#");

	// 3. create the statement
	Statement stmt = con.createStatement();

	String query = "select passenger_details.Flight_Id, flight_details.Flight_Name, flight_details.Source, flight_details.Destination, flight_details.Date_of_travel, flight_details.Time_of_Departure, passenger_details.Passenger_Name, passenger_details.Passenger_Email, passenger_details.Passenger_Age, passenger_details.Passenger_Gender, passenger_details.Passenger_Number_of_Person_Travel, passenger_details.Passenger_Mobile, passenger_details.Passenger_Card_Type, passenger_details.Passenger_Card_Number, flight_details.Flight_Price from flight_details inner join passenger_details on flight_details.Flight_Id=passenger_details.Flight_Id;";
	// 4. execute the statement
	ResultSet rs = stmt.executeQuery(query);
	
	/*while(rs.next()) {
		out.print(rs.getInt(1)+" : "+rs.getString(2)+" : "+rs.getString(3)+" : "+rs.getString(4)
		+" : "+rs.getString(5)+" : "+rs.getString(6)+" : "+rs.getString(7)+" : "+rs.getString(8)
		+" : "+rs.getString(9)+" : "+rs.getString(10)+" : "+rs.getString(11)+" : "+rs.getString(12)
		+" : "+rs.getString(13)+" : "+rs.getString(14));
		out.print("<br/>");
	}*/
	
	while(rs.next()) {
%>
<form action="DeleteRecord.jsp" method="get">
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
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Age</th>
      <th scope="col">Gender</th>
      <th scope="col">Total Traveler/Person</th>
      <th scope="col">Mobile</th>
      <th scope="col">Proof Type</th>
      <th scope="col">Proof Number</th>
      <th scope="col">Flight Price</th>
      <th scope="col"></th>
      
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
      <td><% out.print(rs.getString(7)); %></td>
      <td><% out.print(rs.getString(8)); %></td>
      <td><% out.print(rs.getString(9)); %></td>
      <td><% out.print(rs.getString(10)); %></td>
      <td><% out.print(rs.getString(11)); %></td>
      <td><% out.print(rs.getString(12)); %></td>
      <td><% out.print(rs.getString(13)); %></td>
      <td><% out.print(rs.getString(14)); %></td>
      <td><i class="fa-solid fa-indian-rupee-sign"></i> <% out.print(rs.getString(15)); %></td>
      <td><button type="submit" class="availableFlightBtn"><span>Delete</span></button></td>
      <br/>
    </tr>
  </tbody>
  </table>
</div>
</form>

<%
	}
	// 5. close the connection
	stmt.close();
	con.close();
	System.out.println("Data Display Successfully...!");
} catch (Exception e) {
	out.print(e);
}

%>