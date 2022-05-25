<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<h1></h1>

<form action="home.html" method="get">
<%
 String rname=request.getParameter("status");
 
 out.print("issue status"+" "+rname+"<br>");
 %>
 <input type="submit" value="Submit">
 </form>
</body>
</html>