<%@page import="com.fssa.livre.model.User"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- ... Other HTML head content ... -->
</head>
  <link
    rel="stylesheet"
    href="./assets/css/profile.css"
  />
<body>
    <div class="container">
        <h2>PROFILE</h2>
        <hr>

        <% User user = (User) request.getAttribute("userDetails"); %>

        <form id="form" method="post" action="<%=request.getContextPath() %>/EditProfileServlet">
            <div class="form-group">
                <% if (user != null) { %>
                <label for="uname">Name:</label>
                <input required type="text"title="Name should only contain alphabetic characters."
  pattern="^[a-zA-Z]*$" placeholder="Enter your name" name="name" class="form-control" id="fname" maxlength="30" value="<%=user.getname()%>">

                <label for="age">Age:</label>
                <input required type="number" placeholder="Enter your Age" class="form-control" id="age" maxlength="3" title="Age should be between 18 and 100." min="5"
  max="90" name="age" value="<%=user.getAge()%>">

                <label for="ph_number">Phone number:</label>
<input type="text"
       placeholder="Enter your phone number"
       name="phonenumber"
       class="form-control"
       id="ph_number"
       required
       maxlength="10"
       value="<%= user.getPhoneNumber() %>"
       title="Phone number should have exactly 10 digits and start with 8, 6, 7, or 9."
       pattern="[6-9]\d{9}">
                
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" name="email" readonly value="<%=user.getEmail()%>">
                <% } else { %>
                <p>User not found.</p>
                <% } %>
            </div>

            <div class="form-group form-check">
                <button id="btn-back" type="submit">Save</button>
            </div>
        </form>
    </div>
</body>
</html>
