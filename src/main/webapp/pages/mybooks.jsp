<%@page import="com.fssa.livre.model.Readbooks"%>
<%@ page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<style>
        .status-container {
            margin: 20px;
        }

        .status-label {
            font-weight: bold;
        }

        .duration-container {
            margin-top: 20px;
        }

     #duration {
    font-size: 16px;
}
</style>
<head>
    <link rel="stylesheet" href="./assets/css/readbook.css" />
 
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
                        <a href="<%=request.getContextPath()%>/pdfViewer?pdflink=${readbook.pdflink}&bookId=${readbook.readbookid}" class="tbtn-1">Continue</a>
                    </td>
                </tr>
               
            </table>
        </div>
          <div style="height: 80vh">
        <iframe src="<%= request.getAttribute("pdflink") %>" width="100%" height="100%"></iframe>
    </div>

   <%-- <div class="status-container">
        <span class="status-label">Status:</span>
        <select id="status">
            <option value="completed">Completed</option>
            <option value="inprogress">In Progress</option>
            <option value="notyet">Not Yet</option>
        </select>
    </div>

    <div class="duration-container">
        <span class="duration-label">Duration:</span>
        <span id="duration-${readbook.readbookid}">Calculating...</span>
    </div>
    </div> --%>
</c:forEach>
       
    </div>

</body>
</html>
