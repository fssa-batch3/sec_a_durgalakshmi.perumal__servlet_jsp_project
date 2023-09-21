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
</body>
</html>
