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
<link rel="stylesheet" href="css/ticket_book.css"/>

</head>
<body>

<%-- Header/Navbar --%>
<%@ include file="includes/header.jsp" %>

<section>
	<div class="banner">
		<div class="ticketContent">
			<div class="container">
				<h3>Your Ticket Booked Successfully</h3><br/>
				<a href="index.jsp"><i class="fa-solid fa-house-user fa-4x"></i></a>
			</div>
        </div>    
    </div>
</section>


<%-- Footer --%>
<%@ include file="includes/footer.jsp" %>

<%-- Tail Links --%>
<%@ include file="includes/tail_links.jsp" %>

</body>
</html>