<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>PDF Viewer</title>
</head>
<body><header>
		<jsp:include page="/header.jsp" />
	</header>

    <div style="height: 80vh">
        <iframe src="<%= request.getAttribute("pdflink") %>" width="100%" height="100%"></iframe>
    </div>
    <script>
        var startTime = new Date().getTime();
        
        window.addEventListener("beforeunload", function (e) {
            var endTime = new Date().getTime();
            var duration = endTime - startTime;
            
            // Send the duration to the server using an AJAX request
            var xhr = new XMLHttpRequest();
            xhr.open("POST", "/your-context-root/UpdateUserBooksServlet", true);
            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            xhr.send("bookId=<%= request.getParameter("bookId") %>&duration=" + duration + "&status=completed");
        });
    </script>
</body>
</html>
