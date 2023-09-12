<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.util.*" %>
<%@ page import="com.fssa.livre.model.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>All Readbooks</title>
    <style>
    
    
    
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        h1 {
            text-align: center;
            margin-top: 20px;
            color: #007bff;
        }

        .book-card {
            width: 300px;
            margin: 20px;
            background-color: white;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            float: left;
        }

        .book-card img {
            width: 100%;
        }

        .book-details {
            padding: 16px;
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<h1>All Readbooks</h1>
<%
@SuppressWarnings("unchecked")
List<Readbooks> readbooksList = (List<Readbooks>) request.getAttribute("readbooksList");
%>

<%
for (Readbooks readbooks : readbooksList) {
%>


<div class="book-card">
    <img src="<%=readbooks.getImagelink()%>" alt="<%=readbooks.getBookname()%>">
    <div class="book-details">
        <table>
          
            <tr>
                <th>Book Name</th>
                <td><%=readbooks.getBookname()%></td>
            </tr>
            <tr>
                <th>PDF Link</th>
                <td><a href="<%=readbooks.getPdflink()%>">READ</a></td>
            </tr>
            <tr>
                <th>Category</th>
                <td><%=readbooks.getCategory()%></td>
            </tr>
        </table>
    </div>
</div>
<%
}
%>


 <div style="position: absolute; top: 20px; right: 20px;">
        <form action="searchreadbooks" method="post">
            <label for="category">Search Category:</label>
            <select name="category" id="category">
                <option value="ADVENTURE">ADVENTURE</option>
                <option value="THRILLER">TRILLER</option>
                <option value="ROMANTIC">ROMANTIC</option>
                <option value="COMEDY">COMEDY</option>
                <option value="CLASSIC">CLASSIC</option>
                <option value="HORROR">HORROR</option>
                <option value="DEVOTIONAL">DEVOTIONAL</option>
            </select>
            <input type="submit" value="Search">
        </form>

<a href=GetAllReadbooksServlet>Show All Books</a>
        
    </div>


<div>
<a href="home.jsp">Back</a></div>

</body>
</html>


