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
<%@ include file="includes/header_admin.jsp" %>

<section>
	<div >
		<div class="bannerContent">
			<div class="container">
				<h5 style="text-align: center;">Ticket Records</h5>
				<%@ include file="includes/AdminFlightRegisterSummaryCode.jsp" %>
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