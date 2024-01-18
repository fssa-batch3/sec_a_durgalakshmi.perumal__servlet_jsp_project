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


<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" />
   <link rel="stylesheet" href="<%=request.getContextPath()%>/header.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/footer.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/pdf.js/2.10.377/pdf_viewer.css">

</head>
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
    }
</style>

<body>
<header>
		<jsp:include page="/header.jsp" />
	</header>

<div>
<form action="searchreadbooks" method="post">
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

				<a class="show-all-books" href=<%=request.getContextPath()%>/GetAllReadbooksServlet>Show All Books</a> 


	

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

		<!-- Display "Add Books" button only if isAdmin is true -->
		

	<br>

<!-- footer -->
<div class="section_4">
  <div class="list-1 " style="color:black;">
    <h4 class="para" >Links</h4>
<a href="<%=request.getContextPath() %>/index.jsp">Home</a>
<a href="<%=request.getContextPath() %>/MyBooksServlet">My booklist</a>
<a href="<%=request.getContextPath() %>/ProfileServlet">Profile</a>
<a href="<%=request.getContextPath() %>/GetAllReadbooksServlet">Readbooks</a>
<a href="<%=request.getContextPath() %>/pages/rack.jsp">Library</a>
<a href="<%=request.getContextPath() %>/pages/requestABook.jsp">Request a book</a>
<a href="<%=request.getContextPath()%>/GetAllRequestServlet" >My book request</a>


  </div>
  <div class="list-1">
    <h4 class="para">Category</h4>
   <a >kids</a>
    <a >romantic</a>
    <a >classic</a>
    <a >trend</a>
    <a >triller</a>
    <a >textbooks</a>
    <a >buybooks</a>
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
    <a href=""><img class="fi" src="./assets/images/fb.jpg" alt="fb" /></a>
    <a href=""><img class="fi" src="./assets/images/twitter.png" alt="twitter" /></a>
    <a href=""><img class="fi" src="./assets/images/insta_icon.jpeg" alt="insta" /></a>
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
