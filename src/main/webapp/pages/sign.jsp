<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<style>
    <style>

    body{
      background-image:url(./../assets/images/new2.jpg);
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size:63vw 100vh;
    
      background-position: 90%;
      


      
    }
.container {
  width: 300px;
  padding: 50px;
  background-color: #49546e;
  border-radius: 5px;
  margin: 0 auto;
  box-shadow: 0 15px 25px rgba(40, 12, 110, 0.6);

  margin-top: 8%;
  margin-left:5%;
  color:#ffff;

     
  
}

/* Form header */
h1 {
  text-align: center;
}

/* Form labels */
label {
  font-weight: bold;
}

/* Form input fields */
.fb {
  width: 100%;
  padding: 10px;
  margin-bottom: 10px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

/* Form remember me checkbox */
.rm {
  margin-top: 10px;
}

/* Form terms and privacy link */
.term {
  color: blue;
}

/* Form buttons */
.clearfix::after {
  content: "";
  display: table;
  clear: both;
}

.cancelbtn {
  float: left;
  background-color: #ef1d1d;
  color: #fff;
  padding: 10px;
  border: none;
  border-radius: 3px;
  cursor: pointer;
}

.signupbtn {
  float: right;
  background-color: #f2f2f8;
  color: #081451;
  padding: 10px;
  border: none;
  border-radius: 3px;
  cursor: pointer;
}

</style>
    

</head>
<body>
<div>
     
      <form id="form-sign" action="register" method="post">
        <div class="container">
          <div class="con-1">
            <h1>Sign Up</h1>
            <p>Please fill in this form to create an account.</p>
            <hr />
            <!-- email -->
            <label for="email" class="email"><b>Email</b></label>
            <input
            
              class="fb"
              type="email"
              placeholder="Enter Email"
              title="Enter your email" 
              id="email"
              
            /><br />

            <label for="pwd" class="psw"><b>Password</b></label>
            <input
              class="fb"
              type="password"
              required
              placeholder="Enter Password"
             
              id="password"
            /><br />

<label for="name" class="name"><b>Name</b></label>
<input
  class="fb"
  type="text"
  placeholder="Enter Name"
  id="name"
/><br />

<label for="phoneNumber" class="phone"><b>Phone Number</b></label>
<input
  class="fb"
  type="tel"
  placeholder="Enter Phone Number"
  id="phoneNumber"
/><br />

<label for="age" class="age"><b>Age</b></label>
<input
  class="fb"
  type="number"
  placeholder="Enter Age"
  id="age"
/><br />


         

            <p>
              Already have an account
              <a class="term" href="../pages/login.jsp">Log in</a>.
            </p>
           

            <div class="clearfix">
             
               <a href="../index.html"> <button type="button" class="cancelbtn">Cancel</button></a>
          
              <button type="submit"  class="signupbtn">
                Sign Up
              </button>
            </div>
       
       
          </div>
        </form>
       
        </div>

</body>
</html>
