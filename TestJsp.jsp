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
<form action="TestJsp1.jsp">
<div class="container"> 
 <%
 String vname=request.getParameter("villagename");
 String mname=request.getParameter("mandalname");
 out.print("village name:-"+" "+vname+"<br>");
 out.print("mandal name:-"+" "+mname+"<br>");
 %>
 <input type="submit" value="CREATE ISSUE">
 </div>
 </form>
 
</body>
</html>