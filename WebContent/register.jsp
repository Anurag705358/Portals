<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
String mob=request.getParameter("mob");
String age=request.getParameter("age");
String pwd=request.getParameter("pwd");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/player",
"root","Server@123"); 
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into Data values ('"+fname+"',	'"+lname+"','"+email+"','"+pwd+"','"+age+"','"+mob+"')"); 

out.println("Registered");
%>
<br>
<a href="index.html">Home</a>
</body>
</html>