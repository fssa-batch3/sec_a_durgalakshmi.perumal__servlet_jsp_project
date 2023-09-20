<%@page import="com.fssa.livre.model.Readbooks"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="" %>

<html>
<head>
    <title>My Books</title>
</head>
<body>
    <h1>My Books</h1>
    <%
    Readbooks readbooks = (Readbooks) session.getAttribute("book");
        if (readbooks != null) {
    %>
    <p>Book Name: <%= readbooks.getBookname() %></p>
    <p>Image Link: <%= readbooks.getImagelink() %></p>
    <p>Category: <%= readbooks.getCategory() %></p>
    <p>PDF URL: <%= readbooks.getPdflink() %></p>
    <%
        }
    %>
</body>
</html>
