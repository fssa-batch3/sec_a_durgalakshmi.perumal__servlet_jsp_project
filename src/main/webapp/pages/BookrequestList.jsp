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
  <link
  rel="stylesheet"
  href="./../assets/css/header.css"
/>

    <link rel="stylesheet" href="./assets/css/readbook.css" />

<style>
      body {

    color: #FFF;
      text-align: center;
  }
    
      .lisbook {
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
 gap:3%;
    margin-left: 2%;
    margin-right: 5%;
}

.box-1 {
    width: 22.5%; /* Adjusted width to accommodate 4 boxes in a row */
    margin-bottom: 2%; /* Add a margin-bottom to create space between rows */
}
.lisbook{

    margin-bottom: 10%;
    display: flex;
  
justify-content: flex-star
    gap: 20px;
    margin-top: 5%;
    margin-left: 14%;
}
    .box-1 img {
            height: 250px; /* Set your desired fixed height */
            width: 100%; /* Maintain aspect ratio */
            object-fit: cover; /* Ensure the image covers the specified height */
        }
</style>
</head>
<body>
<header class="header">
		<jsp:include page="/header.jsp" />
	</header>
<div class="lisbook">
	
		<div class="row">
			<c:forEach var="request" items="${UserRequestABookList}">
   
        <div class="box-1" style=" hight:10%;">
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
