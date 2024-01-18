<%@page import="com.fssa.livre.model.Readbooks"%>
<%@ page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
    
<style>

    .book-box {
      margin-bottom:10%;
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
        margin-top:5%;
     margin-left:14%;
     
    }

    .box-1 {
    border-radius:3%;
        width: 20%; /* Adjust the width as needed */
        padding: 10px;
        border: 1px solid ; /* Add a border */
     
        background-color:#14488D; 
    }

    .tb-1 {
        width: 60%; /* Make the image fill the container */
        height: 60%; /* Adjust the height as needed */
        object-fit: cover; /* Maintain aspect ratio and cover the container */
        border-radius: 8px; /* Rounded corners */
         justify-content: center; 
           display: block;
        margin: 0 auto; 
        
      
        
    }
.bok_name {
        font-weight: bold;
        font-size: 16px;
        border-bottom: 1px solid white;
        padding-bottom: 5px;
        margin-bottom: 5px;
          text-align: center;
          color:white;
    }

    .bok_cat {
        font-style: italic;
        margin-top: 5px;
        color:white;
     
    }

    .read-box {
        text-align: center;
        margin-top: 10px;
        
    }

    .book-details {
        margin-top: 10px;
    }

    table {
        width: 100%;
    }

    .bok_name {
        font-weight: bold;
        font-size: 16px;
        border-bottom: 1px solid #ccc; /* Line below the book name */
        padding-bottom: 5px; /* Adjust as needed */
    }

  

  

    .tbtn-1 {
        display: inline-block;
        padding: 6px 13px;
        background-color: white; 
        color:#14488D ;
        text-decoration: none;
        border-radius: 5px;
        cursor: pointer;
        margin-top:5%;
    }
</style>

</head>

<body>
    <header>
        <jsp:include page="/header.jsp" />
    </header>

    <c:choose>
        <c:when test="${empty userReadbooksList}">
            <div> <!-- Add a container element here -->
                <h6 class="mybookline">Start reading a book to build and maintain your booklist!</h6>
            </div>
        </c:when>
        <c:otherwise>
            <div class="book-box"> <!-- Add a container element here -->
                <c:forEach items="${userReadbooksList}" var="readbook">
                    <!-- Display the Readbooks details -->
                    <div class="box-1">
                        <img src="${readbook.imagelink}" alt="${readbook.bookname}" class="tb-1">
                        <div class="book-details">
                            <table>
                                <tr>
                                    <td class="bok_name">${readbook.bookname}</td>
                                </tr>
                                <tr>
                                    <td class="read-box">
                                        <a href="<%=request.getContextPath()%>/pdfViewer?pdflink=${readbook.pdflink}&bookId=${readbook.readbookid}" class="tbtn-1">Continue</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </c:otherwise>
    </c:choose>
</body>

</html>
