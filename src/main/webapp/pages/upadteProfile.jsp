<!DOCTYPE html>
<%@page import="com.fssa.livre.model.User"%>
<html lang="en">
  <head>
    <title>PROFILE</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
    />
    <link
    rel="stylesheet"
    href="./assets/css/profile.css"
  />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  </head>
  <body>
    <div class="container">
      <h2>PROFILE</h2>
     <hr>
     
     
     <% User user = (User) request.getAttribute("userDetails"); %>

    
      <form id="form" method="post" action="<%=request.getContextPath()%>/UpadteProfile">
        <div class="form-group" >
         <% if (user != null) { %> 
        <label for="uname">Name:</label>
<input type="text"   placeholder="Enter your name" class="form-control" id="fname" maxlength="30" value="<%=user.getname() %>">

<label for="uname">Age:</label>
<input type="number"   placeholder="Enter your Age" class="form-control" id="age" maxlength="3" value="<%=user.getAge()%>" >

<label for="uname">Phone number:</label>
<input type="number"   placeholder="Enter your phone number" pattern="[1-9]{1}[0-9]{9}" title="Enter 10 digit mobile number" class="form-control" id="ph_number" maxlength="10" value="<%=user.getPhoneNumber()%>">


<label for="email">Email:</label>

    <input
        type="email"
        class="form-control"
        id="email"
        name="email"
        disabled
        value="<%=user.getEmail()%>"
    />
 <% } else { %>
         <p>User not found.</p>
       <% } %>
        </div>
        
        <div class="form-group form-check">
         
  
           <div class="form-group form-check">
        <button id="btn-delete" type="submit"  href="/profile.jsp" value="Save changes">Save</button>
        <button id="btn-back">Back</button>
    
     
         
        
      </form>

    
    </div>

  </body>
  
</html>
