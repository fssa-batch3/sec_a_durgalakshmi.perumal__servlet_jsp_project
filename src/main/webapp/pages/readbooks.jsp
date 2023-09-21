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

<body>
<header>
		<jsp:include page="/header.jsp" />
	</header>

<div>
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
							<td class="read-box"><c:choose>
									<c:when test="${sessionScope.admin}">
										<a
											href="<%=request.getContextPath()%>/EditReadBooks?id=<c:out value='${readbooks.readbookid}' />"
											class="tbtn-1">Edit</a>

									</c:when>
									<c:otherwise>
<a href="<%=request.getContextPath()%>/pdfViewer?pdflink=<c:out value='${readbooks.pdflink}' />&bookId=<c:out value='${readbooks.readbookid}' />" class="tbtn-1">Read</a>

											
											
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

	<div class="section_4">
		<div class="list-1">
			<h4>about</h4>

			<a href="#">mind free</a> <a href="#"> useful for students</a> <a
				href="#">relax</a> <a href="#">dreamful</a> <a href="#">motivation</a>
			<a href="#">brave</a> <a href="#">mental health</a>
		</div>
		<div class="list-1">
			<h4>supports</h4>
			<a href="#">books</a> <a href="#">comics</a> <a href="#">stories</a>
			<a href="#">thoughtful</a> <a href="#">emotional</a> <a href="#">reality</a>
			<a href="#">history</a>
		</div>
		<div class="list-1">
			<h4>list</h4>
			<a href="#">kids</a> <a href="#">romantic</a> <a href="#">classic</a>
			<a href="#">trend</a> <a href="#">triller</a> <a href="#">textbooks</a>
			<a href="#">buybooks</a>
		</div>

		<div class="list_3">
			<h1>Contact us with</h1>
			<a href="#"><img class="fi" src="../assets/images/fb.jpg"
				alt="fb" /></a> <a href="#"><img class="fi"
				src="../assets/images/twitter.png" alt="twitter" /></a> <a href="#">
				<img class="fi" src="../assets/images/insta_icon.jpeg" alt="insta" />
			</a>
		</div>
	</div>
	<div class="copyrights">@copyrights 2023 Livre | All rights
		reserved</div>



	<script src="./../assets/js/readbook.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.10.377/pdf.js"></script>

</body>
</html>
