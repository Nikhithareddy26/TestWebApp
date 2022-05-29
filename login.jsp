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
 
<%
 String rname=request.getParameter("designation");
 if(rname=="Sarpanch"){
 %>
 <form action="home1.html">
 <h1>Are you want to login as </h1>
 <input type ="submit" value="ok"><% out.print(rname); %>
  </form>
  <%}else if(rname=="department member"){
  %><form action="home2.html">
  <h1>Are you want to login as </h1><% out.print(rname); %>
 <input type ="submit" value="ok">
  </form><%}
  else{
  %><form action="home.html">
  <h1>Are you want to login as </h1><% out.print(rname); %>
 <input type ="submit" value="ok">
  </form><%} %>

</body>
</html>