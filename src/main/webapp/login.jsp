	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
<title>Login</title>
</head>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
  }

  h1 {
    text-align: center;
    margin-top: 20px;
    color: #007bff;
  }

  form {
    max-width: 400px;
    margin: 0 auto;
    padding: 20px;
    background-color: white;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    margin-top: 10%;
  }

  label {
    font-weight: bold;
  }

  input {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
  }

  button {
    display: block;
    width: 100%;
    padding: 10px;
    background-color: #007bff;
    border: none;
    color: white;
    border-radius: 3px;
    cursor: pointer;
    transition: background-color 0.3s;
  }
.loginhere{
margin-top:8%;
}

  button:hover {
    background-color: #0056b3;
  }

  p {
    color: red;
  }
</style>


<body>
	<jsp:include page="header.jsp"></jsp:include>

	<h1 class="loginhere">Login Here</h1>
		<% 
			String errorMessage = request.getParameter("errorMessage");
			if(errorMessage != null){
				out.println("<p>"+errorMessage+"</p>");
			}
		%>
	<form action="login" method="post">
		
		<label>Email: </label> <input type="email" name="email" value="raju@gmail.com"
			placeholder="Enter email"> <br /> <label>Password: </label>

		<input type="password" value= "Devi@321" name="password" placeholder="Enter password">
		<br />
		<button type="submit">Submit</button>
	</form>
</body>
</html>