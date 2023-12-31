<%@page import="com.fssa.livre.model.Readbooks"%>
<%@ page import="java.util.List"%>
<%@ page import="com.fssa.livre.AddReadbooksServlet"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>readbooks</title>
<link rel="stylesheet" href="./assets/css/header-books.css" />
<link rel="stylesheet" href="./assets/css/readbook.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="./assets/css/header.css" />
<link rel="stylesheet" href="./assets/css/footer.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.10.377/pdf_viewer.css">

</head>
<style>/* Style for the form */
/* Style for the form */
form {
    margin-bottom: 20px;
}

label {
    font-weight: bold;
    margin-right: 10px;
}

select {
    padding: 5px;
    font-size: 16px;
}

/* Style for the "Add Books" button */
a.btn-success {
    display: inline-block;
    padding: 10px 20px;
    background-color: #28a745; /* Green color for success */
    color: #fff; /* White text color */
    text-decoration: none;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

a.btn-success:hover {
    background-color: #218838; /* Darker green color on hover */
}


input[type="submit"] {
    padding: 5px 10px;
    background-color: #007BFF;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}

/* Style for the "Show All Books" link */
a.show-all-books {
    display: inline-block;
    padding: 10px 20px;
    background-color: #007BFF;
    color: #fff;
    text-decoration: none;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

a.show-all-books:hover {
    background-color: #0056b3;
}

</style>
<body>
<header>
		<jsp:include page="/header.jsp" />
	</header>

<div>
<%--<form action="searchreadbooks" method="post">
					<label for="category">Search Category:</label> <select
						name="category" id="category">
						<option value="ADVENTURE">        </option>
						<option value="ADVENTURE">ADVENTURE</option>
						<option value="THRILLER">THRILLER</option>
						<option value="ROMANTIC">ROMANTIC</option>
						<option value="COMEDY">COMEDY</option>
						<option value="CLASSIC">CLASSIC</option>
						<option value="HORROR">HORROR</option>
						<option value="DEVOTIONAL">DEVOTIONAL</option>
					</select> <input type="submit" value="Search">
				</form>

				<a class="show-all-books" href=<%=request.getContextPath()%>/GetAllReadbooksServlet>Show All Books</a> --%>


	

<c:if test="${sessionScope.admin}">
			<a href="<%=request.getContextPath()%>/readbooksform.jsp"
				class="btn-success">Add Books</a>
		</c:if>
	<div class="book-box">

	
		<%
		
		// HttpSession session = request.getSession(false);
		Boolean isAdmin = (Boolean) session.getAttribute("admin");
		%>

		<c:forEach items="${readbooksList}" var="readbooks">
			<div class="box-1">
				<img src="${readbooks.imagelink}" alt="${readbooks.bookname}"
					class="tb-1">
				<div class="book-details">
					<table>
						<tr>
							<td class="bok_name">${readbooks.bookname}</td>
						  
							
						</tr>
						<tr>
						  <td id="category" class="bok_cat">${readbooks.category}</td>
						</tr>
						<tr>
							<td class="read-box"><c:choose>
									<c:when test="${sessionScope.admin}">
										<a
											href="<%=request.getContextPath()%>/EditReadBooks?id=<c:out value='${readbooks.readbookid}' />"
											class="tbtn-1">Edit</a>

									</c:when>
									<c:otherwise>
<a onclick="return checkLogin();" href="<%=request.getContextPath()%>/pdfViewer?pdflink=<c:out value='${readbooks.pdflink}' />&bookId=<c:out value='${readbooks.readbookid}' />" class="tbtn-1">Read</a>

											
											
									</c:otherwise>
								</c:choose></td>
						</tr>
						<tr>
						</tr>
					</table>
				</div>
			</div>
		</c:forEach>

	</div>
	</div>
	<div>
		<!-- Display "Add Books" button only if isAdmin is true -->
		
	</div>
	<br>
<!-- footer -->
<div class="section_4">
  <div class="list-1 ">
    <h4 class="para" >about</h4>

    <a>mind free</a>
<a>useful for students</a>
<a>relax</a>
<a>dreamful</a>
<a>motivation</a>
<a>brave</a>
<a>mental health</a>

  </div>
  <div class="list-1">
    <h4 class="para">supports</h4>
    <a>books</a>
    <a>comics</a>
    <a>stories</a>
    <a>thoughtful</a>
    <a>emotional</a>
    <a>reality</a>
    <a>history</a>
  </div>
  <div class="list-1">
    <h4 class="para">list</h4>
    <a >kids</a>
    <a >romantic</a>
    <a >classic</a>
    <a >trend</a>
    <a >triller</a>
    <a >textbooks</a>
    <a >buybooks</a>
  </div>

  <div class="list_3">
    <h1 class="para">Contact us with</h1>
  <a href="" ><img class="fi" src="./assets/images/fb.jpg" alt="fb" /></a>
  <a href="" ><img class="fi" src="./assets/images/twitter.png" alt="twitter" /></a>
  <a href="" > <img class="fi" src="./assets/images/insta_icon.jpeg" alt="insta" /></a>
  </div>
</div>
<div class="copyrights">
  @copyrights 2023 Livre | All rights reserved
</div>




	<script src="./../assets/js/readbook.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.10.377/pdf.js"></script>






</body>
</html>
