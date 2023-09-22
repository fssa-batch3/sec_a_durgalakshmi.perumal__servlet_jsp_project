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

        <form id="form" method="post" action="<%=request.getContextPath()%>/UpadteProfile">
            <div class="form-group">
                <% if (user != null) { %>
                <label for="uname">Name:</label>
                <input type="text" placeholder="Enter your name" class="form-control" id="fname" maxlength="30" value="<%=user.getname()%>">

                <label for="uname">Age:</label>
                <input type="number" placeholder="Enter your Age" class="form-control" id="age" maxlength="3" value="<%=user.getAge()%>">

                <label for="uname">Phone number:</label>
                <input type="number" placeholder="Enter your phone number" pattern="[1-9]{1}[0-9]{9}" title="Enter 10 digit mobile number" class="form-control" id="ph_number" maxlength="10" value="<%=user.getPhoneNumber()%>">

                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" name="email" disabled value="<%=user.getEmail()%>">
                <% } else { %>
                <p>User not found.</p>
                <% } %>
            </div>

            <div class="form-group form-check">
                <a id="btn-delete" type="submit" href="<%=request.getContextPath()%>/EditProfile" value="Save changes">Save</a>
                <button id="btn-back">Back</button>
            </div>
        </form>
    </div>
</body>
</html>
