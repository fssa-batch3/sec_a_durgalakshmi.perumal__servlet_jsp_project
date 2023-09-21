<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>contact us</title>
    <link
    rel="stylesheet"
    href="./../assets/css/footer.css"
  />
  </head>
  <style>
    .section_4 {
      margin-top: 3%;
  
}
    body {
  background-color: #abbece;
}

.all {
  background-color: #7491a4;
  margin-left: 10%;
  width: 80%;
  display: flex;
justify-content: center;
  margin-top: 3%;
  border-radius: 20px;
  display: flex;
}

.img-1 {
  height: 60px;
  width: 60px;
  margin-top: -20px;
  margin-left: 170px;
  margin-bottom: 300px;
}

.heading {
  margin-left: 150px;
  padding-top: 70px;
}

p {
  font-size: 20px;
  color: white;
  margin-left: 150px;
  margin-top: -310px;
}



.s-2 {
  background-color: #194569;
  margin-left: 5%;
  height: 600px;
  width: 700px;
  margin-top: 30px;
  border-radius: 30px;
  box-shadow: 20px 20px 50px rgb(38, 36, 36);
}

.fb {
  height: 40px;
  width: 250px;
  border-radius: 10px;
  border: none;
  display: flex;
  background-color: #a2c2d8;
  color: #0b0c0e;
  margin-left: 240px;
}

.fb-1 {
  height: 160px;
  width: 250px;
  border-radius: 10px;
  border: none;
  display: flex;
  background-color: #a2c2d8;
  color: #0b0c0e;
  margin-left: 240px;
}

.n {
  margin-left: 100px;
  color: white;
  font-size: 30px;
  margin-top: -100px;
}

.btn {
  background-color: #a2c2d8;
  color: black;
  font-size: 20px;
  border-radius: 10px;
  border: none;
  height: 40px;
  width: 100px;
  margin-left: 200px;
  margin-top: 100px;
}
.btn:hover{
  background-color:white;

}

h1 {
  color: white;
  margin-left: 200px;
}

  </style>
  <body>
  <header>
		<jsp:include page="/header.jsp" />
	</header>
  
    <div class="all">
      <div class="s-1">
        <div class="address">
          <h1 class="heading">Address</h1>
          <img class="img-1" alt="img"  src="./../assets/images/map-marker.png" /><br />
          <p>
            chennai ht-2<br />
            medavakkam
          </p>
        </div>
        <!-- ...... -->
        <div class="call">
          <h1 class="heading">Call us</h1>
          <img class="img-1"alt="img"  src="./../assets/images/phone.png" /><br />
          <p>09876543221</p>
        </div>
        <!-- ....... -->
        <div clas="email">
          <h1 class="heading">Email us</h1>
          <img class="img-1" alt="img"  src="./../assets/images/email.png" /><br />
          <p>livre.durga@gmail.com</p>
        </div>
      </div>
      <div class="s-2">
        <h1>SENT US A MESSAGE</h1>
        <form onsubmit="sendEmail(); reset(); return false;">
        <label class="n"> <b>Name</b> </label>
        <input class="fb" type="text" id="name-input" placeholder="Enter Name" required /><br />

        <label class="n"> <b>Email</b></label>
        <input
          class="fb"
          type="text"
          placeholder="Enter Email"
          required
          id="email"
        /><br />
        <textarea
          placeholder="message..."
          name="msg"
          message-input
          required
          class="fb-1"
        ></textarea>

        <!-- <a href="./../index.html" -->
          <button  id="cancel-btn" type="button" class="btn">Cancel</button>
        
        <button  onclick="sendEmail()">submit</button>
      </div>
      </form>
    </div>
    <div class="adddiv"></div>
    <div class="section_4">
      <div class="list-1">
        <h4>about</h4>
    
        <a href="#">mind free</a>
        <a href="#"> useful for students</a>
        <a href="#">relax</a>
        <a href="#">dreamful</a>
        <a href="#">motivation</a>
        <a href="#">brave</a>
        <a href="#">mental health</a>
      </div>
      <div class="list-1">
        <h4>supports</h4>
        <a href="#">books</a>
        <a href="#">comics</a>
        <a href="#">stories</a>
        <a href="#">thoughtful</a>
         <a href="#">emotional</a>
        <a href="#">reality</a>
        <a href="#">history</a>
      </div>
      <div class="list-1">
        <h4>list</h4>
        <a href="#">kids</a>
        <a href="#">romantic</a>
        <a href="#">classic</a>
        <a href="#">trend</a>
        <a href="#">triller</a>
        <a href="#">textbooks</a>
        <a href="#">buybooks</a>
      </div>
    
      <div class="list_3">
        <h1>Contact us with</h1>
      <a href="#" ><img class="fi" src="../assets/images/fb.jpg" alt="fb" /></a>
      <a href="#" ><img class="fi" src="../assets/images/twitter.png" alt="twitter" /></a>
      <a href="#" > <img class="fi" src="../assets/images/insta_icon.jpeg" alt="insta" /></a>
      </div>
    </div>
    <div class="copyrights">
      @copyrights 2023 Livre | All rights reserved
    </div>
 
    
 
  

<script>src="https://smtpjs.com/v3/smtp.js"</script>
<script src="https://smtpjs.com/v3/smtp.js"></script>

<script>

 
  function sendEmail(){
    // let mail = document.getElementById("email").value;
    console.log(mail)
    Email.send({
    Host : "smtp.gmail.com",
    Username : "durgalakshmi.perumal@fssa.freshworks.com",
    SecureToken : "7872ecf-7881-42a5-beaa-5cd4832a2c0e",
    Password : "B4123599E50547CB0F61C7D83E8543A34C1E",
    To :"durgalakshmi.22laks@gmail.com",
    From :  document.getElementById("email").value,
    Subject : "This is the subject",
    Body : "And this is the body"
}).then(
  message => alert(message)
  
);
  }
</script>
</body>
</html>
