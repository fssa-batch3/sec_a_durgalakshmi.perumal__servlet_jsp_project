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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="./assets/css/header.css" />
<link rel="stylesheet" href="./assets/css/footer.css" />
</head>

<body>


	<!--nav starts-->

	<nav class="navbar navbar-expand-lg bg-body-tertiary">

		<div class="container">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<!--header-->

			<div class="collapse navbar-collapse header"
				id="navbarSupportedContent">
				<div class="head-logo">
					<img class="logo" src="./assets/images/dulogo.png" alt="logo" />
				</div>

				<li class="nav-item head_btn"><a class="navbar-brand"
					href="./mybooks.jsp">My books</a></li>

				<!--<li class="nav-item head_btn">
              <a class="navbar-brand" href="sugges.html">suggestions</a>
            </li>-->


				<li class="nav-item dropdown head_btn"><a
					class="nav-link dropdown-toggle" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"> Browse </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="./pages/trendbooks.jsp">Trending
								books</a></li>
						<li><a class="dropdown-item" href="./pages/readbooks.jsp">Read
								books</a></li>
						<li><a class="dropdown-item" href="./pages/sugges.jsp">Suggestions</a>
						</li>
						<li><a class="dropdown-item" href="./pages/buybooks.jsp">Buy
								books</a></li>
						<li><a class="dropdown-item" href="./pages/rack.jsp">Rack
								library</a></li>
						<li><a class="dropdown-item" href="./pages/musics.jsp">Music</a>
						</li>
					</ul></li>

				</ul>

				<li class="nav-item head_btn"><a class="navbar-brand"
					href="./pages/contactus.jsp">contact us</a></li>

				<li class="nav-item head_btn"><a class="navbar-brand"
					href="./pages/login.jsp">log in </a></li>



				<div class="flex-shrink-0 ">
					<a href="./pages/profile.html"> <img
						src="./assets/images/Screenshot 2023-04-04 135236.png"
						alt="Generic placeholder image"
						class="img-fluid rounded-circle border border-dark border-3"
						style="width: 50px;"></a>


				</div>
			</div>
			<div>
				<form action="searchreadbooks" method="post">
					<label for="category">Search Category:</label> <select
						name="category" id="category">
						<option value="ADVENTURE">ADVENTURE</option>
						<option value="THRILLER">TRILLER</option>
						<option value="ROMANTIC">ROMANTIC</option>
						<option value="COMEDY">COMEDY</option>
						<option value="CLASSIC">CLASSIC</option>
						<option value="HORROR">HORROR</option>
						<option value="DEVOTIONAL">DEVOTIONAL</option>
					</select> <input type="submit" value="Search">
				</form>

				<a href=GetAllReadbooksServlet>Show All Books</a>

			</div>
	</nav>


	<div class="section-body">
		<div class="vertical-nav">
			<ul>


				<li class="back_btn bok-type"><a href="../index.html"
					style="text-decoration: none; color: white;">back</a></li>
			</ul>

		</div>
	</div>
	
	
	<div class="book-box">
	<%
    // HttpSession session = request.getSession(false);
    Boolean isAdmin = (Boolean) session.getAttribute("admin");
%>
<c:forEach items="${readbooksList}" var="readbooks">
    <div class="box-1">
        <img src="${readbooks.imagelink}" alt="${readbooks.bookname}" class="tb-1">
        <div class="book-details">
            <table>
                <tr>
                 
                    <td class="bok_name">${readbooks.bookname}</td>
                </tr>
                <tr>
                   
                    <td class="read-box">
                        <c:choose>
                            <c:when test="${sessionScope.admin}">
                                <a href="#" class="tbtn-1">Edit</a>
                                <a href="#" class="tbtn-1">Delete</a>
                            </c:when>
                            <c:otherwise>
                                <a href="${readbooks.pdflink}" class="tbtn-1">Read</a>
                            </c:otherwise>
                        </c:choose>
                    </td>
                </tr>
                <tr>
           
                 
                </tr>
            </table>
        </div>
    </div>
</c:forEach>
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


</body>
</html>
