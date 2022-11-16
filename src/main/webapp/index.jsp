<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>FlyAway Airline Booking Portal</title>

<%-- Head Links --%>
<%@ include file="includes/head_links.jsp" %>

<%-- Local CSS --%>
<link rel="stylesheet" href="css/index.css"/>

</head>
<body>

<%-- Header/Navbar --%>
<%@ include file="includes/header.jsp" %>

<section>
	<div class="banner">
		<div class="bannerContent">
			<br/><br/>
        	<h1 class="heading">Welcome to FlyAway Airline</h1> <br><br>
            
            <form action="login.jsp">
            	<button type="submit">
            		<span><i class="fa-sharp fa-solid fa-jet-fighter"></i>Book Flights</span>
            		<div class="liquid"></div>
            	</button>
            </form>
            
            <br/><br/><br/>
            <form action="admin_login.jsp">
            	<button type="submit">
            		<span><i class="fa-solid fa-gear"></i>Admin Login</span>
            		<div class="liquid"></div>
            	</button>
            </form>
        </div>    
    </div>
</section>


<%-- Footer --%>
<%@ include file="includes/footer.jsp" %>

<%-- Tail Links --%>
<%@ include file="includes/tail_links.jsp" %>

</body>
</html>