<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
    text-align: center;
  }

  h1 {
    color: #007bff;
    margin-bottom: 20px;
  }

  p {
    font-size: 18px;
    margin-bottom: 20px;
  }

  a {
    display: inline-block;
    padding: 10px 20px;
    margin: 10px;
    background-color: #007bff;
    color: #fff;
    text-decoration: none;
    border-radius: 5px;
    transition: background-color 0.3s;
  }

  a:hover {
    background-color: #0056b3;
  }
</style>

<body>
<h1>Welcome to  Livre</h1>

<%
	String loggedInEmail = (String) session.getAttribute("loggedInEmail");
	
	if(loggedInEmail == null) {
		response.sendRedirect("login.jsp");
	}
	
%>

<p>Logged In user: <%=loggedInEmail%> </p>
<a href="GetAllUserServlet">Get all Users</a><br>
<a href="readbooksform.jsp">Add ReadBooks</a><br>
<a href="GetAllReadbooksServlet">Get All ReadBooks</a><br>
<a href="LogoutServlet">logout</a><br> 



</body>
</html>