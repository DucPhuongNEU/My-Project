<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getAttribute("id").toString();
String name = request.getAttribute("name").toString();
String email = request.getAttribute("email").toString();
out.print("Id: " + id);
out.print("<br/>Name: " + name);
out.print("<br/>Email: " + email);
%>
</body>
</html>