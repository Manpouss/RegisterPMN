<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.formation.classes.User"%> 
<%@page import="com.formation.model.UserDAO"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% System.out.println((boolean)session.getAttribute("isConnected"));
	if((boolean)session.getAttribute("isConnected")==true){ 
			System.out.println((boolean)session.getAttribute("isConnected"));
          String id = String.valueOf((Integer)session.getAttribute("userid"));
          UserDAO user_dao = new UserDAO();
		  User current_user= user_dao.getById(Integer.parseInt(id));
	                  	
                             	
    %>
    	<h1>Bonjour <%= current_user.getUsername() %> </h1>
    <%} %>
</body>
</html>