<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>FlyAway</h1>

<div align="right">
<a href="AdminPage.jsp">Admin Login</a>
</div>

<%
	@SuppressWarnings("unchecked")
	HashMap<String,String> user=(HashMap<String,String>)session.getAttribute("user");
	if(user!=null){
%>
<p align="center">Welcome <%=user.get("name") %></p>
<a href="Logout">Logout</a>
<%
	}else{
%>
<a href=UserPage.jsp>User Login</a>
<%
	}
%>
<br><br>
<center>
<div style="border:5px solid black;width:25%;border-radius:20px;padding:20px" align="center">
<form action=FlightList method=post>
	<label for=from>From :-</label> <input type=text name=from id=from/><br><br>
	<label for=to>To :-</label> <input type=text name=to id=to/><br><br>
	<label for=departure>Departure :-</label> <input type=date name=departure id=departure/><br><br>
	<label for=travellers>Travellers :-</label> <input type=number name=travellers id=travellers/><br><br>
	<input type=submit value=Search /> <input type=reset />
</form>
</div>
</center>

</body>
</html>