<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%! 
    int count = 0;  // declaring a variable

    public int incrementCount() {  // declaring a method
        return count++;
    }
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

</head>
<body>
 The current count is: <%= incrementCount() %>
</body>
</html>