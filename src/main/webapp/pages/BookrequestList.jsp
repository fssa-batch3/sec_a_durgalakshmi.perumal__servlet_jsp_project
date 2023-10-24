<%@page import="com.fssa.livre.model.UserRequestABook"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@page import="com.fssa.livre.GetAllRequestServlet"%>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="./assets/css/readbook.css" />

<style>
      body {

    color: #FFF;
      text-align: center;
  }
    
      .container {
        margin-top:5%;
       text-align: center;
       
        
    }
    
    h1 {
  font-family: "Your Desired Font", sans-serif; 
  color: #000080;
  text-align: center;
}
        .bok_dis {
  font-size: 18px;
  font-weight: bold;
  color: #87CEEB;
    font-family: "Your Desired Font", sans-serif;
}
.row {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between; /* Adjust as needed */
    margin-left:5%;
       margin-right:5%;
}

</style>
</head>
<body>
<div class="container">
		<h1>Book Requests</h1>
		<div class="row">
			<c:forEach var="request" items="${UserRequestABookList}">
   
        <div class="box-1">
            <img src="${request.imageUrl}" class="card-img-top" alt="Book Image">
            <div class="card-body">
                <h5 class="bok_name">${request.bookName}</h5>
                <p class="bok_dis">${request.description}</p>
                <p class="bok_cat">${request.status}</p>
            </div>
       
    </div>
</c:forEach>

		</div>
	</div>

</body>
</html>
