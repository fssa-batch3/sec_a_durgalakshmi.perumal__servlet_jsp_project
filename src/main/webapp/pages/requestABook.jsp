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
<body>

  
  


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
        <label for="bookname" class="form-label">Book name:</label>
        <input
            id="book_name"
            type="text"
            class="form-control"
            value="Hey You!"
            name="bookname"
            required
        />
    </div>
    <div>
        <label for="img" class="form-label">Book image URL:</label>
        <input
            id="img_url"
            type="text"
            class="form-control"
            value="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfgixp7l1nMDGmmQW81FrvygGhVzfwEAKDlg&usqp=CAU"
            name="imagelink"
            required
        />
    </div>
    <br />
    <!-- div 2 -->
 
    <br />
    <!-- New div for description -->
    <div>
        <label for="description" class="form-label">Description:</label>
        <textarea
            id="description"
            class="form-control"
            name="description"
            rows="4"  
        ></textarea>
    </div>
    <br />
    <div class="d-grid d-md-block container">
        <button class="btn btn-primary" type="submit">Submit</button>
    </div>
</div>
</form>
</body>
</html>
