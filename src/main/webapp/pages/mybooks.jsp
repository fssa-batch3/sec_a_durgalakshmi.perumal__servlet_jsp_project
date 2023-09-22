<%@page import="com.fssa.livre.model.Readbooks"%>
<%@ page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="./assets/css/readbook.css" />
    <!-- Add any other necessary CSS or head content here -->
</head>
<body>
    <header>
        <jsp:include page="/header.jsp" />
    </header>
    <div class="book-box">
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
                        <a href="<%=request.getContextPath()%>/pdfViewer?pdflink=${readbook.pdflink}&bookId=${readbook.readbookid}" class="tbtn-1">Read</a>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</c:forEach>
       
    </div>
    <!-- The rest of your HTML content -->
</body>
</html>
