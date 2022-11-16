<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>FlyAway Airline | Login Page</title>

<%-- Head Links --%>
<%@ include file="includes/head_links.jsp" %>

<%-- Local CSS --%>
<link rel="stylesheet" href="css/login_signup.css"/>

</head>
<body>

<%-- Header/Navbar --%>
<%@ include file="includes/header.jsp" %>

<section>
	<div class="banner">
		<div class="bannerContentLogin">
		<h5 style="text-align: center; color: #ddf505; ">Data Store Successfully...!Now You can login Here</h5>
			<%@ include file="includes/login_code.jsp" %>
        </div>    
    </div>
</section>


<%-- Footer --%>
<%@ include file="includes/footer.jsp" %>

<%-- Tail Links --%>
<%@ include file="includes/tail_links.jsp" %>

</body>
</html>