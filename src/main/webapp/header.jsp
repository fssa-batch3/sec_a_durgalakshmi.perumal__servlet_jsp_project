<html>
<head>
<meta charset="ISO-8859-1">
<title>Header</title>
 <link rel="stylesheet" href="assets/css/style.css" />
        <link rel="stylesheet" href="assets/css/header.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
</head>
<body>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
      
      <div class="container">
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <!--header-->

        <div
          class="collapse navbar-collapse header"
          id="navbarSupportedContent"
        >
          <div class="head-logo">
            <img class="logo" id="logo" src="./assets/images/dulogo.png" alt="logo" />
          </div>
         
            <li class="nav-item head_btn">
              <a class="navbar-brand" href="./pages/DisplayMyBooks.jsp">My books</a>
            </li>
         
            <!--<li class="nav-item head_btn">
              <a class="navbar-brand" href="sugges.html">suggestions</a>
            </li>-->
            
         
            <li class="nav-item dropdown head_btn">
              <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Browse
              </a>
              <ul class="dropdown-menu">
                <li>
                  <a class="dropdown-item" href="./pages/trendbooks.jsp">Education books</a>
                </li>
                <li>
                  <a class="dropdown-item" href="./pages/readbooks.jsp">Read books</a>
                </li>
                <li>
                  <a class="dropdown-item" href="./pages/sugges.jsp">Suggestions</a>
                </li>
                <li>
                  <a class="dropdown-item" href="./pages/buybooks.jsp">Buy books</a>
                </li>
                <li>
                  <a class="dropdown-item" href="./pages/rack.jsp">Rack library</a>
                </li>
                <li>
                  <a class="dropdown-item" href="./pages/musics.jsp">Music</a>
                </li>
              </ul>
            </li>
      
          </ul>      
       
          <li class="nav-item head_btn">
            <a class="navbar-brand" href="./pages/contactus.jsp">contact us</a>
          </li>
<% 
Boolean isAdmin = (Boolean) session.getAttribute("admin");
System.out.println(isAdmin);
String loggedInEmail = (String) session.getAttribute("loggedInEmail");
if ((loggedInEmail != null && !loggedInEmail.isEmpty()) || (isAdmin != null && isAdmin == true)) {
%>
   <li class="nav-item head_btn">
      <a class="navbar-brand" href="<%=request.getContextPath()%>/LogoutServlet">Log Out</a>
   </li>
<% } else { %>
   <li class="nav-item head_btn">
      <a class="navbar-brand" href="./pages/login.jsp">Log In</a>
   </li>
<% } %>


          <div class="flex-shrink-0">
            <a href="./pages/profile.jsp">
            <img src="./assets/images/Screenshot 2023-04-04 135236.png"
              alt="Generic placeholder image" class="img-fluid rounded-circle border border-dark border-3"
              style="width:50px;"></a>

            
        </div>
       <label for="check" class="menuButton">
          <input id="check" onclick="toggleSidebar()" type="checkbox">
          <span class="top"></span>
          <span class="mid"></span>
          <span class="bot"></span>
        </label>
          <div class="sidebar" id="sidebar">
        
            <%--   <h2>books</h2>
            <ul>
              <li><a href="./pages/readbooks.jsp">Books to read</a></li>
              <li><a href="./pages/buybooks.jsp">Books to buy</a></li>
              <li><a href="./pages/trendbooks.jsp">Education books</a></li>

            </ul>
            <h2>Recent Posts</h2>
            <ul>
              <li><a href="./pages/DisplayMyBooks.jsp">My books</a></li>
             
            </ul>
--%>
            <div class="toggle-switch">
              <label class="switch-label">
                <input type="checkbox" id="mode-toggle" class="checkbox">
                <span class="slider"></span>
              </label>
            </div> 
    

      </div>
    
    </nav>
</body>
</html>