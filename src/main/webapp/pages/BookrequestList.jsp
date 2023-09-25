<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <style>
    /* Add your CSS styles here */

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
<%
    // HttpSession session = request.getSession(false);
    Boolean isAdmin = (Boolean) session.getAttribute("admin");
%>

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
                        
                        <!-- Check if the user is an admin -->
                        <c:if test="${sessionScope.admin}">
                            <form action="acceptRequest" method="post">
                                <input type="hidden" name="requestId" value="${request.id}">
                                <button type="submit">Accept</button>
                            </form>
                            
                            <form action="declineRequest" method="post">
                                <input type="hidden" name="requestId" value="${request.id}">
                                <button type="submit">Decline</button>
                            </form>
                            
                            <!-- Show a text box for reason if declined -->
                            <c:if test="${request.status == 'Declined'}">
                                <p>Reason for Decline: ${request.declineReason}</p>
                            </c:if>
                        </c:if>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>
