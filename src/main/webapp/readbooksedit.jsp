<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.fssa.livre.model.Readbooks" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" />
    <meta charset="ISO-8859-1">
    <title>Edit ReadBooks Entry</title>
</head>
<body>
    <div class="container">
        <h2>Edit ReadBooks Entry</h2>
        <form action="<%=request.getContextPath()%>/EditReadBooks" method="post">
            <%
            Readbooks readbooks = (Readbooks) request.getAttribute("readbooks");
            %>
            <div class="mb-3">
                <label for="imagelink" class="form-label">Image URL:</label>
                <input type="text" class="form-control" name="imagelink" value="<%= readbooks.getImagelink() %>" required />
            </div>
            <div class="mb-3">
                <label for="bookname" class="form-label">Book Name:</label>
                <input type="text" class="form-control" name="bookname" value="<%= readbooks.getBookname() %>" required />
            </div>
            <div class="mb-3">
                <label for="pdflink" class="form-label">PDF URL:</label>
                <input type="text" class="form-control" name="pdflink" value="<%= readbooks.getPdflink() %>" required />
            </div>
            <div class="mb-3">
                <label for="section" class="form-label">Section </label>
          <select id="books" class="form-control" name="category" value="<%= readbooks.getCategory() %>" value="CLASSIC" required>
              <option value=""></option>
                 <option value="adventure">ADVENTURE</option>
              <option value="triller">THRILLER</option>
              <option value="romantic">ROMANTIC</option>
              <option value="comedy">COMEDY</option>
              <option value="classic">CLASSIC</option>
              <option value="horror">HORROR</option>
              <option value="devotinal">DEVOTIONAL</option>
            </select>
            <br />
            </div>
                  <button class="btn btn-primary" type="submit">Update</button>
        </form>
    </div>
</body>
</html>
