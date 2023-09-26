<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <style>
      .container {
        margin: 20px;
    }

    .card {
        border: 1px solid #ccc;
        border-radius: 5px;
        margin: 10px;
        padding: 10px;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
    }

    .card-img-top {
        max-width: 100%;
        height: auto;
    }

    .card-title {
        font-size: 1.25rem;
        font-weight: bold;
    }

    .card-text {
        font-size: 1rem;
    }

    .card-status {
        font-weight: bold;
        color: #333;
    }

    button {
        margin-top: 10px;
        padding: 5px 10px;
        border: none;
        background-color: #007BFF;
        color: #fff;
        border-radius: 5px;
        cursor: pointer;
    }

    button:hover {
        background-color: #0056b3;
    }

    /* Style for the reason paragraph when a request is declined */
    p {
        color: #FF0000;
        font-style: italic;
    }
    </style>
</head>
<body>

<div class="container">
    <h1>Book Requests</h1>
    <div class="row">
        <c:forEach var="request" items="${bookRequests}">
            <div class="col-md-4">
                <div class="card">
                    <img src="${request.imageUrl}" class="card-img-top" alt="Book Image">
                    <div class="card-body">
                        <h5 class="card-title">${request.bookName}</h5>
                        <p class="card-text">${request.description}</p>
                        <p class="card-status">${request.status}</p>
                        
                        
                    </div>
                    
                    <a class="btn btn-success" href="<%=request.getContextPath()%>/AcceptStatusServlet?requestId=${request.requestId}">Accept</a>
                    <a class="btn btn-primary" href="<%=request.getContextPath()%>/DeclineStatusServlet?requestId=${request.requestId}">Decline</a>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

</body>
</html>
