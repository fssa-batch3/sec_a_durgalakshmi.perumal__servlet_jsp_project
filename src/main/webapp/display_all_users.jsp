<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="java.util.*"%>
<%@ page import="com.fssa.livre.model.*"%>
<!DOCTYPE html>
<html>
<head>
<title>All Users</title>
<style>
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
  }

  h1 {
    text-align: center;
    margin-top: 20px;
    color: #007bff;
  }

  table {
    border-collapse: collapse;
    width: 100%;
    margin: 20px auto;
    background-color: white;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  }

  th, td {
    border: 1px solid #ccc;
    padding: 8px;
    text-align: left;
  }

  th {
    background-color: #f2f2f2;
  }
</style>
</style>
</head>
<body>
	<h1>All Registered Users</h1>
	<%
	@SuppressWarnings("unchecked")
	List<User> users = (List<User>) request.getAttribute("users");
	%>
	<table>
		<tr>
			<th>UserId</th>
			<th>Email</th>
			
		</tr>

		<%
		for (User user : users) {
		%>
		<tr>
		    <td><%=user.getUserId()%></td>
			<td><%=user.getEmail()%></td>
			
			
			
		
		</tr>

		<%
		}
		%>





	</table>
</body>
</html>