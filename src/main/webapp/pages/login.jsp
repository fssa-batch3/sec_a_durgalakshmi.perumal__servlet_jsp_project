<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
<title>Login</title>
</head>
<style>
   body{
      background-image:url(./../assets/images/new2.jpg);
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size:65vw 100vh;
      background-attachment: fixed;
      background-position: 85%;

      
    }
    .login-box {
      position: absolute;
      top: 50%;
      left: 20%;
      width: 400px;
      padding: 40px;
      margin: 20px auto;
      transform: translate(-50%, -55%);
      background:  #031e34;
      box-sizing: border-box;
      box-shadow: 0 15px 25px rgba(0, 0, 0, 0.6);
      border-radius: 10px;
      color: #fff;

    }

    .login-box p:first-child {
      margin: 0 0 30px;
      padding: 0;
      background: transparent;
      /* color: #fff; */
      text-align: center;
      font-size: 1.5rem;
      font-weight: bold;
      letter-spacing: 1px;
    }

    .login-box .user-box {
      position: relative;
    }

    .login-box .user-box input {
      width: 100%;
      padding: 10px 0;
      font-size: 16px;
      color: #fff;
      margin-bottom: 30px;
      border: none;
      border-bottom: 1px solid #fff;
      outline: none;
      background: transparent;
    }

    .login-box .user-box label {
      position: absolute;
      top: 0;
      left: 0;
      padding: 10px 0;
      font-size: 16px;
      color: #fff;
      pointer-events: none;
      transition: 0.5s;
    }
    .login-box .user-box input:focus ~ label,
    .login-box .user-box input:valid ~ label {
      top: -20px;
      left: 0;
      color: #fff;
      font-size: 12px;
    } 

    .login-box form a {
      position: relative;
      display: inline-block;
      padding: 10px 20px;
      font-weight: bold;
      color: #fff;
      font-size: 16px;
      text-decoration: none;
      text-transform: uppercase;
      overflow: hidden;
      transition: 0.5s;
      margin-top: 40px;
      letter-spacing: 3px;
    }

    .login-box a:hover {
      background: #fff;
      color: #272727;
      border-radius: 5px;
    }

    .login-box a span {
      position: absolute;
      display: block;
    }

    .login-box a span:nth-child(1) {
      top: 0;
      left: -100%;
      width: 100%;
      height: 2px;
      background: linear-gradient(90deg, transparent, #fff);
      animation: btn-anim1 1.5s linear infinite;
    }

    @keyframes btn-anim1 {
      0% {
        left: -100%;
      }

      50%,
      100% {
        left: 100%;
      }
    }

    .login-box a span:nth-child(2) {
      top: -100%;
      right: 0;
      width: 2px;
      height: 100%;
      background: linear-gradient(180deg, transparent, #fff);
      animation: btn-anim2 1.5s linear infinite;
      animation-delay: 0.375s;
    }

    @keyframes btn-anim2 {
      0% {
        top: -100%;
      }

      50%,
      100% {
        top: 100%;
      } 
     }

    .login-box a span:nth-child(3) {
      bottom: 0;
      right: -100%;
      width: 100%;
      height: 2px;
      background: linear-gradient(270deg, transparent, #fff);
      animation: btn-anim3 1.5s linear infinite;
      animation-delay: 0.75s;
    }

    @keyframes btn-anim3 {
      0% {
        right: -100%;
      }

      50%,
      100% {
        right: 100%;
      }
    }

    .login-box a span:nth-child(4) {
      bottom: -100%;
      left: 0;
      width: 2px;
      height: 100%;
      background: linear-gradient(360deg, transparent, #fff);
      animation: btn-anim4 1.5s linear infinite;
      animation-delay: 1.125s;
    }

    @keyframes btn-anim4 {
      0% {
        bottom: -100%;
      }

      50%,
      100% {
        bottom: 100%;
      }
    }

    .login-box p:last-child {
      color: #aaa;
      font-size: 14px;
    }

    .login-box a.a2 {
      color: #fff;
      text-decoration: none;
    }

    .login-box a.a2:hover {
      background: transparent;
      color: #aaa;
      border-radius: 5px;
    }
    .sub_btn{
      float: right;
  background-color: #f6f6f9;
  color: #190631;
  padding: 10px;
  border: none;
  border-radius: 3px;
  cursor: pointer;
    }
</style>


<body>
<%-- <jsp:include page="header.jsp"></jsp:include>--%>	
	<% 
			String errorMessage = request.getParameter("errorMessage");
			if(errorMessage != null){
				out.println("<p>"+errorMessage+"</p>");
			}
		%>
		<div class="login-box">
  <p>Login</p>
  <form id="form-log" action="<%=request.getContextPath()%>/login" method="post">
    <div class="user-box">
      <label for="Email">Email: </label><br>
      <input id="Email" type="email" name="email"  title="Enter valid Email" 
             pattern="[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+"   placeholder="Enter email"><br>
    </div>
    <div class="user-box">
      <label for="Password">Password: </label><br>
      <input type="password" id="Password"  name="password" placeholder="Enter password"  title="Enter the valid password" 
             pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@#$%^&+=])(?=.*[^\s]).{8,}$" ><br>
    </div>
    <button type="submit">Submit</button>
  </form>
  <p>
    Don't have an account? <a href="./sign.jsp" class="a2">Sign up!</a>
  </p>
</div>

</body>
  
</html>