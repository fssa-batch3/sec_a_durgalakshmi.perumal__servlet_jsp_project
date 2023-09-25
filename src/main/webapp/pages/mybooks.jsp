<%@page import="com.fssa.livre.model.Readbooks"%>
<%@ page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="./assets/css/readbook.css" />
    <style>
        .mybookline {
            font-size: 2rem;
            margin-top: 200px;
            text-transform: uppercase;
            text-align: center;
            color: #007BFF; /* Blue color */
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
