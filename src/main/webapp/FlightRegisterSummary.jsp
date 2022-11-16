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
<link rel="stylesheet" href="css/available_flight.css"/>

</head>
<body class="banner-bg">

<%-- Header/Navbar --%>
<%@ include file="includes/header.jsp" %>

<section>
	<div >
		<div class="container">
			<div class="flightContent">
				<h3>Ticket Summary</h3><br/>
				<%@ include file="includes/FlightRegisterSummaryCode.jsp" %>	
			</div>
		</div>   
    </div>
</section>

<hr class="HoriLine">

<%-- Footer --%>
<%@ include file="includes/footer.jsp" %>

<%-- Tail Links --%>
<%@ include file="includes/tail_links.jsp" %>

</body>
</html>