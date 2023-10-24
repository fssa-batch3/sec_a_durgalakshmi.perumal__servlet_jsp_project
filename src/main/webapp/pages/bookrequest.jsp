<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
 <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
    />
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
    .bok_dis {
  font-size: 18px;
  font-weight: bold;
  color: #87CEEB;
    font-family: "Your Desired Font", sans-serif;
}
h1 {
  font-family: "Your Desired Font", sans-serif; 
  color: #000080;
  text-align: center;
}

    

    </style>
</head>
<body>

<div class="container">
    <h1>Book Requests</h1>
    <div class="row">
        <c:forEach var="request" items="${bookRequests}">
            <div class="col-md-4">
            <div class="container">
                <div class="box-1">
                    <img src="${request.imageUrl}" class="card-img-top" alt="Book Image">
                    <div class="card-body">
                        <h5 class="bok_name">${request.bookName}</h5>
                        <p class="bok_dis">${request.description}</p>
                        <p class="bok_cat">${request.status}</p>
                        
                        
                    </div>
                   <div style="display: inline-block; margin-right: 10px;">
  <a class="btn btn-success" href="<%=request.getContextPath()%>/AcceptStatusServlet?requestId=${request.requestId}">Accept</a>
</div>
<div style="display: inline-block;">
  <a class="btn btn-danger" href="<%=request.getContextPath()%>/DeclineStatusServlet?requestId=${request.requestId}">Decline</a>
</div>
                   
                </div>
            </div>
            </div>
        </c:forEach>
    </div>
</div>

</body>
</html>
