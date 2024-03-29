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

    
      <form id="form" >
        <div class="form-group" >
         <% if (user != null) { %> 
        <label for="uname">Name:</label>
<input type="text" readonly  placeholder="Enter your name" class="form-control" id="fname" maxlength="30" value="<%=user.getname() %>">

<label for="uname">Age:</label>
<input type="number" readonly  placeholder="Enter your Age" class="form-control" id="age" maxlength="3" value="<%=user.getAge()%>" >

<label for="uname">Phone number:</label>
<input type="number" readonly  placeholder="Enter your phone number" pattern="[1-9]{1}[0-9]{9}" title="Enter 10 digit mobile number" class="form-control" id="ph_number" maxlength="10" value="<%=user.getPhoneNumber()%>">


<label for="email">Email:</label>

    <input
        type="email"
        class="form-control"
        id="email"
        name="email"
        readonly
        value="<%=user.getEmail()%>"
    />
 <% } else { %>
         <p>User not found.</p>
       <% } %>
        </div>
        
        <div class="form-group form-check">
         
  
           <div class="form-group form-check">
       
        <a id="btn-back" href="./index.jsp">Back</a>
         <a class="btn btn-success" type="submit"  href="<%=request.getContextPath()%>/UpdateProfile" value="Save changes">Update</a>
    
 
     
   
     
         
        
      </form>

    
    </div>

    <!-- <script>

    // getting the data from the array deatils and user datails
      let current_email = JSON.parse(localStorage.getItem("details"))

     let user_about = JSON.parse(localStorage.getItem("usersdetails"))
     console.log(user_about)
  // among the details, finding the current user deatils to display in profile
     let User_obj = user_about.find(function (user_about) {
            let check_email = user_about["user_email"]
            if (current_email == check_email) {
              console.log("2");
                return true;  
            }
        })
      // get the current email the user entered in login
        let mail = document.getElementById("email");      
      //  checking the current email and the already extisting email
        mail.value = current_email;
     
       

// get the deatils from the form
        let pro_info = document.getElementById("form");
       
        pro_info.addEventListener("submit", function (event) {
            event.preventDefault();

            let user_name = document.getElementById("fname").value;
            let user_lastname = document.getElementById("lname").value;
            let user_age = document.getElementById("age").value;
            let user_email = document.getElementById("email").value;
            let user_ph_num = document.getElementById("ph_number").value;
           
          
            // the age must be 10 to 110
            if (isNaN(user_age)||user_age<10||user_age>110){ 
    alert("The age must be a number between 10 and 110");
    return ;}

// the phone number must be 10 numbers
    if (user_ph_num.length != 10){ 
    alert("The phone number must be only 10 numbers");
    return ;}
    
    // initializing the variable useing let
            let user_object = {
                user_name,
                user_lastname,
                user_age,
                user_email,
                user_ph_num,
                
            };

            //  merge the properties of two objects into a new object called checked_obj
            let checked_obj = Object.assign(User_obj, user_object)
            console.log(checked_obj);
            // find the index then store in index variable
            let index = user_about.indexOf(User_obj);
            console.log(index);

            user_about[index] = checked_obj;
        //  then set the new object in the local storage
            localStorage.setItem("usersdetails",JSON.stringify(user_about))
            // throw an alert
            alert("Successfully changed")
            // redirecting to another page
            window.location.href = "./../index.html";
          
        }) 

        // if the user is true
          let check = true;
          // find the current user deatils and check weather it is corrct 
        let present_details = user_about.find(function (user) {
            let check_email = user["user_email"]
            if (current_email === check_email) {
                // get the elements by the id 
              let firstname = document.getElementById("fname");
            let lastname = document.getElementById("lname");
            let age = document.getElementById("age");
            let email = document.getElementById("email");
            let phone = document.getElementById("ph_number");
            // the values of the input fields are set to the corresponding values in the user object

            firstname.value = user["user_name"];
            lastname.value = user["user_lastname"];
            age.value = user["user_age"];
            email.value = current_email;
            phone.value = user["user_ph_num"]

            }
        })
                    // delete user profile starts

        // get the delete element id
        let user_delete = document.getElementById("btn-delete");
        // assign the work by addeventlistener
        user_delete.addEventListener("click", function (event) {
            event.preventDefault()
            let Index = user_about.indexOf(User_obj)
            // confirm that the user want to delete or not by a msg
            let msg = confirm("Are you sure want to delete your account")
            if (msg !== true) {
                return
            }
            else {
                user_about.splice(Index, 1);
                console.log(user_about);
                localStorage.setItem("usersdetails", JSON.stringify(user_about))
            
                window.location.href = "./sign.html";
            }
        })
                     // delete user profile ends

    </script> -->
  </body>
  
</html>
