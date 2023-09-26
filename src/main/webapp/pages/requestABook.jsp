<%@page import="com.fssa.livre.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
   <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
    />
<meta charset="ISO-8859-1">
<title>Request a book</title>

</head>
<style>

.divv {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: 20vh; /* Adjust as needed for your layout */
}

.hh {
    font-size: 24px;
    font-weight: bold;
    margin-bottom: 10px;
}

.linkk {
    text-decoration: none;
    background-color: #007BFF;
    color: #fff;
    padding: 10px 20px;
    border-radius: 5px;
    font-weight: bold;
    transition: background-color 0.3s ease;
}


</style>
<body>
<%-- <c:if test="${sessionScope.admin}">
			<div class="divv">

<h3 class="hh">Hey!,See your request here.</h3>
<a class="linkk" href="<%=request.getContextPath()%>/GetAllRequestServlet">My Book Request</a> 
</div>
		</c:if>--%>

   <br />
 <form id="bookform" action="<%=request.getContextPath()%>/RequestABookServlet" method="post">
    <div class="mb-3 form-control container">
    <!-- div 1 -->
    <label for="email">Email:</label>
    <input
        type="email"
        class="form-control"
        id="email"
        name="email"
         value="<%= session.getAttribute("loggedInEmail") %>"
         Readonly
        
    /> <br>  <div>
  <label for="book_name" class="form-label">Book Name:</label>
  <input
    id="book_name"
    type="text"
    class="form-control"
    name="bookname"
    required
    title="Enter the book's name"
  />
</div><br>
<div>
  <label for="book_name" class="form-label">Author Name:</label>
  <input
    id="author_name"
    type="text"
    class="form-control"
    name="authorname"
    required
    title="Enter the author's name"
  />
</div><br>
<div>
  <label for="img_url" class="form-label">Book Image URL:</label>
  <input
    id="img_url"
    type="text"
    class="form-control"
    name="imagelink"
    required
    pattern="https?://.*"
    title="Enter a valid URL starting with http:// or https://"
  />
</div>

<br />

<!-- New div for description -->
<div>
  <label for="description" class="form-label">Description:</label>
  <textarea
    id="description"
    class="form-control"
    name="description"
    rows="4"
    title="Enter a description for the book"
  ></textarea>
</div>
    
    <br />
 <div class="d-grid d-md-block container">
  <button class="btn btn-success" type="submit">Submit</button>
</div>
<div class="d-grid d-md-block container" style="margin-top: 10px;">
  <a class="btn btn-primary" href="<%=request.getContextPath() %>/index.jsp">Back</a>
</div>
</div>
</form>



<div class="divv">

<h3 class="hh">Hey!,See your request here.</h3>
<a class="linkk" href="<%=request.getContextPath()%>/GetAllRequestServlet" method="Get">My Book Request</a>
</div>
</body>
</html>
