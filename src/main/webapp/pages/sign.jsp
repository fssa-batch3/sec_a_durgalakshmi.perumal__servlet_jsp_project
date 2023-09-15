<!DOCTYPE >
<html lang="en">
  <head>
    <title>SIGN-UP</title>
  </head>
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
  padding: 20px;
  background-color: #49546e;
  border-radius: 5px;
  margin: 0 auto;
  box-shadow: 0 15px 25px rgba(40, 12, 110, 0.6);

  margin-top: 13%;
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

  <body>
    <div>
     
      <form id="form-sign">
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
<!-- password -->
            <label for="pwd" class="psw"><b>Password</b></label>
            <input
              class="fb"
              type="password"
              required
              placeholder="Enter Password"
              pattern="[A-Za-z0-9]{0,25}$"
              title="You should enter only number,lowercase and uppercase"
              id="password"
            /><br />
<!-- confirm password -->
            <label class="psw-repeat"><b>Repeat Password</b></label>
            <input
              class="fb"
              type="password"
              required
              placeholder="Repeat Password"
              pattern="[A-Za-z0-9]{0,25}$"
              title="password is not matching"
              id="conpwd"
            /><br />

            <label>
              <input class="rm" type="checkbox" checked="checked" />
              Show password
            </label>

            <p>
              Already have an account
              <a class="term" href="../pages/login.html">Log in</a>.
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
        
    </div>
    <script>
  
           const signup = document.getElementById("form-sign");
           signup.addEventListener("submit",function (event){
            event.preventDefault();
            let array = [];

                if (localStorage.getItem("usersdetails") != null) {
                    array = JSON.parse(localStorage.getItem("usersdetails"));
                }
              let match = false
                let email = document.getElementById("email").value.trim();
                let password = document.getElementById("password").value.trim();
                let conpassword = document.getElementById("conpwd").value.trim();
     
                
                if (password != conpassword) {
                  alert("Invalid credentials")
                  return;
                } 
                else  {
                   for(let i = 0; i < array.length; i++){
                    if (array[i]["user_email"] === email){
                      match = true;
                    }
                   }
                  }
                

                if(match == true){
                  alert("The email is already exists")
                }
                else {
                 
                    let sign_user_data = {  
                      
                        "user_email": email.toLowerCase(),
                        "user_pass": password,
                        "user_conpwd": conpassword,
                    }
                    array.push(sign_user_data);
                    let arrayupdate = JSON.stringify(array);
                    localStorage.setItem("usersdetails", arrayupdate);
                    window.location.href = "./login.html";
                   
                }
              })
            
          
    </script>
  </body>
</html>
