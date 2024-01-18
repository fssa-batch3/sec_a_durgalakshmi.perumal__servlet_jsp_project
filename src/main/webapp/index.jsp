<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Livre</title>
    <link rel="stylesheet" href="assets/css/style.css" />
        <link rel="stylesheet" href="assets/css/header.css" />
    
    <!-- <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
    /> -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrapID selectors, ID selectors have the higher specificity and are therefore more powerful. (In fact, ID selectors are so powerful that only the ! important property can override them in CSS.).min.css"
    />
  </head>
  <style>
.list_3 {
    display: flex;
    align-items: center;
}

.fi {
    border-radius: 50%; /* Make the image circular */
    margin-right: 10px; /* Add some spacing between the icons */
}

.para {
    margin-right: 10px; /* Add spacing between the text and the icons */
}



.section-1 {

    display: flex;
    justify-content: space-between;
    align-items: center;
     margin-top:-5%;
}

.sec1-content {

    flex: 1;
    padding: 20px;
    margin-left:10%;
}

.image-sec1-div {
    flex: 1;
    padding: 20px;
   
    margin-right: 10%;
}

.sec1-para {
 
    font-size: 50px;
    line-height: 1.5;
    font-family:Palatino, URW Palladio L, serif;
    color:#14488d;
}



.sec-1img {
   
    margin-top: 10%;
    display: block;
    border-radius: 8px;
    margin-right: 20%;
    height:480px;
    width:120%;
}




/* suggestion btn */
.read-btn {
    font-size: 1.2rem;
    padding: 1rem 2.5rem;
    border: none;
    outline: none;
    border-radius: 0.4rem;
    cursor: pointer;
    text-transform: uppercase;
    background-color: #14488d;
    color:white;
    font-weight: 700;
    transition: 0.6s;
    box-shadow: #14488d;
    text-decoration:none;
     margin-top:15%;
 
	/* -webkit-box-reflect: below 10px linear-gradient(to bottom, rgba(0,0,0,0.0), rgba(0,0,0,0.4)); */
}

.read-btn:active {
	scale: 0.92;
}

.read-btn:hover {
	background: #14488d;

	color: var(#14488d);
}

.suggestion_div {
  display: flex;
  align-items: center;
  margin-top:-2%;
}

.design_img3 {
  max-width: 100%; /* Ensure the image doesn't exceed its container */
}

.content-wrapper {
  flex: 1;
  padding: 0 20px; /* Adjust the padding as needed */
}

.curve-div {
margin-left:10%;
}

.suggestion_para {
  margin-bottom: 10px;
     font-size: 50px;
    line-height: 1.5;
    font-family:Palatino, URW Palladio L, serif;
    color:#14488d; /* Adjust the margin as needed */
    margin-right:-10%;
}


  .req_div-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }

  .req_div-content {

    flex: 1;
      margin-left: 9%;
  }

  .image-sec3-div {

    margin-right: -9%; 
  }
  

  .sec-3img {
    width: 70%;
    height: auto;
    
  
  }
  </style>

  <body>

 
    
    <!--nav starts-->

<header class="header">
		<jsp:include page="/header.jsp" />
	</header> <div class="section-1">
        <div class="sec1-content">
      
            <p class="sec1-para">Book lovers,
                <br> rejoice!<br> Enjoy free reading now!</p>
            <a href="GetAllReadbooksServlet" class="read-btn" >Start reading</a>
          </div>
        <div class="image-sec1-div">
          <img class="sec-1img" id="1image" alt="img" src="./assets/images/Premium Vector _ People in library   illustration.jpeg">
        </div>
       
      </div>

<div class="suggestion_div">

 
  <img class="design_img3" alt="img" id="3image" src="./assets/images/li-img.jpeg">
  <div class="curve-div">
 <p class="suggestion_para para">Unleash your imagination <br>and discover a world <br>of knowledge.</p> 
<a href="./pages/rack.jsp">  <button class="des_3_btn">Explore</button></a></div>
 
</div>
   <div class="req_div-container">
  <div class="req_div-content">
    <p class="sec1-para">Request your favorite book <br>from us!
Explore a world of <br>reading delight.</p>
    <a href="<%=request.getContextPath() %>/pages/requestABook.jsp" class="read-btn" style="  margin-top:2%;">Request a book</a>
  </div>
  <div class="image-sec3-div">
    <img class="sec-3img" id="1image" alt="img" src="./assets/images/requestbok.jpeg">
  </div>
</div>





      <div class="section-2 about-div">
        <p>What we believe in</p>

        <h1>
          You can read all type of books here!<br />we hope you will love it.
        </h1>

        <div >
          <a href="./pages/aboutus.jsp"><button class="about-btn">ABOUT US</button></a>
          </div>
</div>
 
 
 



<div class="newslatter">
<div class="emailnews_form">
  <form action="">
      <h1 class="news_para">Join Our Newsletter</h1>
       <div class="email-box">


          <input id="email" class="tbox" onclick = "sendmail"  class="btn" type="email" placeholder="Enter Your Email" required>
          <a href=""> <input  id ="btn" class="sub-btn" type="onclick" value="Subscribe"></a>
      </div>
  </form>
</div>
</div>


<!-- footer -->
<div class="section_4">
  <div class="list-1 " style="color:black;">
    <h4 class="para" >Links</h4>
<a href="<%=request.getContextPath() %>/index.jsp">Home</a>
<a href="<%=request.getContextPath() %>/MyBooksServlet">My booklist</a>
<a href="<%=request.getContextPath() %>/ProfileServlet">Profile</a>
<a href="<%=request.getContextPath() %>/GetAllReadbooksServlet">Readbooks</a>
<a href="<%=request.getContextPath() %>/pages/rack.jsp">Library</a>
<a href="<%=request.getContextPath() %>/pages/requestABook.jsp">Request a book</a>
<a href="<%=request.getContextPath()%>/GetAllRequestServlet" >My book request</a>


  </div>
  <div class="list-1">
    <h4 class="para">Category</h4>
   <a >kids</a>
    <a >romantic</a>
    <a >classic</a>
    <a >trend</a>
    <a >triller</a>
    <a >textbooks</a>
    <a >buybooks</a>
  </div>
  <div class="list-1">
    <h4 class="para">list</h4>
    <a >kids</a>
    <a >romantic</a>
    <a >classic</a>
    <a >trend</a>
    <a >triller</a>
    <a >textbooks</a>
    <a >buybooks</a>
  </div>
<div class="list_3">
    <h1 class="para">Contact us with</h1>
    <a href=""><img class="fi" src="./assets/images/fb.jpg" alt="fb" /></a>
    <a href=""><img class="fi" src="./assets/images/twitter.png" alt="twitter" /></a>
    <a href=""><img class="fi" src="./assets/images/insta_icon.jpeg" alt="insta" /></a>
</div>


</div>
<div class="copyrights">
  @copyrights 2023 Livre | All rights reserved
</div>


  <script src="https://smtpjs.com/v3/smtp.js"></script>


    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
 


<script>
// Get references to the button and image elements
const modeToggle = document.getElementById('mode-toggle');
const image = document.getElementById('image1');
const imagelistern = document.getElementById("4image");
const imgsug = document.getElementById("3image");
const imglibery = document.getElementById("1image");
const imgcus = document.getElementById("5img");
const imgshop = document.getElementById("2img");
const imglogo = document.getElementById("logo")

// Define the function that changes the image in dark to light mode
function toggleImageMode() {
  // If the image source is the light mode version, update it to the dark mode version
  if (image.src.includes('light-mode')) {
    image.src = './assets/images/Home (1).png';
  } else {
    // If the image source is the dark mode version, update it to the light mode version
    image.src = './assets/images/2home.png';
  }

  // iimg2 
  if (imagelistern.src.includes('light-mode')) {
    imagelistern.src = './assets/images/Black Blue Ivory Dark Experimental Traditional Art Portfolio Website (5).png';
  } else {
    imagelistern.src = './assets/images/darkimg4.png';
  }
  // img 3

  if (imgsug.src.includes('light-mode')) {
    imgsug.src = './assets/images/Black Blue Ivory Dark Experimental Traditional Art Portfolio Website (3).png';
  } else {
    imgsug.src = './assets/images/darkimg3.png';
  }

  // img4 
  if (imglibery.src.includes('light-mode')) {
    imglibery.src = './../assets/images/Untitled design.png';
  } else {
    imglibery.src = './assets/images/libery img dark.png';
  }
  //  img5 
  if (imgcus.src.includes('light-mode')) {
    imgcus.src = './assets/images/DESIGN-3.png';
  } else {
    imgcus.src = './assets/images/cus dark.png';
  }
   //  img6 
   if (imgshop.src.includes('light-mode')) {
    imgshop.src = './assets/images/About (1).png';
  } else {
    imgshop.src = './assets/images/shopdark.png';
  }
  // logo 
  if (imglogo.src.includes('light-mode')) {
    imglogo.src = './../assets/images/dulogo.png';
  } else {
    imglogo.src = './assets/images/darklogo.png';
  }
}

// Add an event listener to the button that calls the function when it is clicked
modeToggle.addEventListener('click', toggleImageMode);

function toggleToLightMode() {
  image.src = './assets/images/Home (1).png';
  imagelistern.src = './assets/images/Black Blue Ivory Dark Experimental Traditional Art Portfolio Website (5).png';
  imgsug.src = './assets/images/Black Blue Ivory Dark Experimental Traditional Art Portfolio Website (3).png';
  imglibery.src = './assets/images/Untitled design.png';
  imgcus.src = './assets/images/DESIGN-3.png';
  imgshop.src = './assets/images/About (1).png';
  imglogo.src = './assets/images/dulogo.png';
}

 </script>
<script>
  
</script>

<script src="./assets/js/main.js"></script>


<script>
  function toggleSidebar() {
    var sidebar = document.getElementById("sidebar");
    sidebar.classList.toggle("active");
  }
</script>
<script>
const modeSwitch = document.getElementById("mode-toggle");
const body = document.querySelector("body");

modeSwitch.addEventListener("click", () => {
  body.classList.toggle("dark");
});

</script>



 </body>
</html>
