<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<form action="Testjsp2.jsp">
 <%
 String vname=request.getParameter("villagename");
 String mname=request.getParameter("mandalname");
 out.print("village name:-"+" "+vname+"<br>");
 out.print("mandal name:-"+" "+mname);%>

 <script>
 document.write(document.getElementByName("villagename"));
 document.write(document.getElementByName("mandalname"));
 
 </script>
 <input type="text" size=10 width="100" id="issue" name="issue">
 <input type="button" value="+" size=50 onclick="create()">
 <script>
 function create(){
	 var x= document.createElement("INPUT");
	 x.setAttribute("type","text");
	 x.setAttribute("name","write issues");
	 document.body.appendChild(x);
	 
	 var s= document.createElement("INPUT");
	 s.setAttribute("type","radio");
	 
	 s.setAttribute("name","status");
	 s.setAttribute("id","solved");
	 s.setAttribute("value","solved");
	 s.setAttribute("label","Solved");
	 document.body.appendChild(s);
	 var w= document.createElement("INPUT");
	 w.setAttribute("type","radio");
	 w.setAttribute("name","status");
	 w.setAttribute("id","work in progress");
	 w.setAttribute("value","work in progress");
	 document.body.appendChild(w);
	 var u= document.createElement("INPUT");
	 u.setAttribute("type","radio");
	 u.setAttribute("name","status");
	 u.setAttribute("id","unsolved");
	 u.setAttribute("value","unsolved");
	 document.body.appendChild(u);
	 var b= document.createElement("INPUT");
	 b.setAttribute("type","submit");
	 b.setAttribute("id","submit");
	 b.setAttribute("value","submit");
	 document.body.appendChild(b);
 }</script>
 
<input type="radio" id="opt1" name="status" value="solved">
  <label for="opt1" id="label1"> Solved</label><br>
  <input type="radio" id="opt2" name="status" value="in progress">
  <label for="opt2" id="label2"> Work on progress</label><br>
  <input type="radio" id="opt3" name="status" value="unsolved">
  <label for="opt3" id="label3"> unsolved</label><br><br>
  <input type="submit" value="Submit">

 </form>
 
</body>
</html>