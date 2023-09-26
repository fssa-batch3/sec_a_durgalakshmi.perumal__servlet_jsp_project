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
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
    />
  </head>
  <style>

  </style>

  <body>

 
    
    <!--nav starts-->

<header>
		<jsp:include page="/header.jsp" />
	</header>
<div class="section-1">

  <div class="image-wrapper">
    <img class="sec_1img" id="1image" alt="img" src="./assets/images/Untitled design.png">
  </div>
  <div class="sec1_content">

    <p class="sec1_para">Unleash your imagination <br>and discover a world <br>of knowledge.</p>
    <a href="./pages/rack.jsp" class="library_btn"> <button class="des_libery_btn">Enter the Library</button></a>
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
 
<div class="design-1">

  <img class="design_img1"id="image1" alt="img" src="./assets/images/Home (1).png">
  <p class="read_para para">Are you a bibiliophile?<br>Then this is for you!<br>
  Now you can read books for free!</p> 
<a href="GetAllReadbooksServlet">  <button class="des_1_btn">START READING</button></a>
</div>

<!-- section3 -->
<%-- <div>
  <img class="design_img2" id="2img" alt="img" src="./assets/images/About (1).png">
  <p class="shop_para para"><br>"Shop from </p>
<a href="./pages/buybooks.jsp">  <button class="des_2_btn">SHOP HERE!</button></a>
 
</div>--%>

<!-- suggestion -->
<div class="suggestion_div">
  <img class="design_img3" alt="img" id="3image" src="./assets/images/Black Blue Ivory Dark Experimental Traditional Art Portfolio Website (3).png">
 <p class="suggestion_para para">Would you like to exchange book recommendations?<br>Then try this!</p> 
<a href="./pages/sugges.jsp">  <button class="des_3_btn">Suggestion</button></a>
 
</div>
<!-- music -->
<div>
  <img class="design_img4" id="4image" src="./assets/images/Black Blue Ivory Dark Experimental Traditional Art Portfolio Website (5).png">
 <p class="music_para para">Would you like to exchange book recommendations?<br>Then try this!</p> 
<a href="./pages/musics.jsp">  <button class="des_4_btn">Listern</button></a>

</div>
 <!-- customer-details -->
 <div class="cus_div">
  <img class="cus_img" id="5img" alt="img"  src="./assets/images/DESIGN-3.png">
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
  <div class="list-1 ">
    <h4 class="para" >about</h4>

    <a>mind free</a>
<a>useful for students</a>
<a>relax</a>
<a>dreamful</a>
<a>motivation</a>
<a>brave</a>
<a>mental health</a>

  </div>
  <div class="list-1">
    <h4 class="para">supports</h4>
    <a>books</a>
    <a>comics</a>
    <a>stories</a>
    <a>thoughtful</a>
    <a>emotional</a>
    <a>reality</a>
    <a>history</a>
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
  <a href="" ><img class="fi" src="./assets/images/fb.jpg" alt="fb" /></a>
  <a href="" ><img class="fi" src="./assets/images/twitter.png" alt="twitter" /></a>
  <a href="" > <img class="fi" src="./assets/images/insta_icon.jpeg" alt="insta" /></a>
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
