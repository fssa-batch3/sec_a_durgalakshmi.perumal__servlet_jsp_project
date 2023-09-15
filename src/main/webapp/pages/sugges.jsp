<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
    rel="stylesheet"
    href="./../assets/css/footer.css"
  />
  <link
  rel="stylesheet"
  href="./../assets/css/header.css"
/>
    <title>happy</title>
    <style>
      /* .homep {
        height: 60px;
        width: 250px;
        margin-left: 1500px;
        font-size: 25px;
        border-radius: 10px;
        background-color: #aecde8;
        margin-top: 000px;
        border: none;
      }
      .homep:hover {
        background-color: #194569;
        color: aliceblue;
      } */
      /* .logo {
        margin-left: 600px;
        margin-bottom: 50px;
      } */
      /* .header {
        background-color: white;
        height: 400px;
      } */
      body {
        background-color: #98c1e3;
      }
      .c-1{
        display: flex;
        margin-top: 60px;
        margin-left: 50px;
      }
      .profile{
        height: 140px;
        width:140px;
        border-radius: 90px;
      }
      h2{
        font-size: 40px;
        margin-left: 20px;
        color: #0b3251;
        margin-bottom: 20px;
      }
      .text{
        width: 800px;
        background-color: #e6edf3;
        border-radius: 20px;
        margin-left: 40px;
        height: 100px;
      }
      .btn-cancel{
        background-color: #98c1e3;
        color:black;
        border: none;
        height: 50px;
        width: 100px;
        border-radius: 20px;
        margin-left: 40px;
        margin-top: 40px;
        font-size: 20px;
      }
      .btn-cancel:hover{
        background-color: #194569;
        color: aliceblue;
      }
      .btn-sub{
        background-color: #666d74;
        color: #e6edf3;
        border: none;
        height: 50px;
        width: 100px;
        border-radius: 20px;
        margin-left: 40px;
        margin-top: 40px;
        font-size: 20px;
      }
      .btn-sub:hover{
        background-color:#194569 ;
        color: #e6edf3;
      }
      .c-2{
        display: flex;
        margin-left:50px;
        margin-top: 100px;
      }
      p{
        font-size:30px;
        margin-left:100px;
        margin-top: 10px;
      
      }
      .p-sugges{
        background-color: aliceblue;
        height: 60px;
        width: 400px;
        margin-left: 70px;
        margin-top: 30px;
        border-radius: 15px;
      }
      .t-up{
        height: 40px;
        width: 40px;
        margin-left: 40px;
        margin-top: 40px;
        
       
      }
      .t-up:hover{
        transform: scale(1.2);
      }
      .t-down{
        height: 40px;
        width: 40px;
        margin-left: 30px;
        margin-top: 40px;
      }
      .t-down:hover{
        transform: scale(1.2);
      }
     
    
    </style>
  </head>
  <body>
      <!--nav starts-->

      <!-- <nav class="navbar navbar-expand-lg bg-body-tertiary">
      
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
          header-->
<!--   
          <div
            class="collapse navbar-collapse header"
            id="navbarSupportedContent"
          >
            <div class="head-logo">
              <img class="logo" src="./../assets/images/dulogo.png" alt="logo" />
            </div>
           
              <li class="nav-item head_btn">
                <a class="navbar-brand" href="./mybooks.html">My books</a>
              </li> -->
           
              <!--<li class="nav-item head_btn">
                <a class="navbar-brand" href="sugges.html">suggestions</a>
              </li>-->
              
           
              <!-- <li class="nav-item dropdown head_btn">
                <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Browse
                </a>
                <ul class="dropdown-menu">
                  <li>
                    <a class="dropdown-item" href="./pages/trendbooks.html">Trending books</a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="./pages/readbooks.html">Read books</a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="./pages/sugges.html">Suggestions</a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="./pages/buybooks.html">Buy books</a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="./pages/rack.html">Rack library</a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="./pages/musics.html">Music</a>
                  </li>
                </ul>
              </li>
        
            </ul>      
         
            <li class="nav-item head_btn">
              <a class="navbar-brand" href="./pages/contactus.html">contact us</a>
            </li>
  
            <li class="nav-item head_btn">
              <a class="navbar-brand" href="./pages/login.html">log in </a>
            </li> -->
           
  <!-- <div id="google_element"></div> -->
  
            <!-- <div class="flex-shrink-0 ">
              <a href="./pages/profile.html">
              <img src="./../assets/images/Screenshot 2023-04-04 135236.png"
                alt="Generic placeholder image" class="img-fluid rounded-circle border border-dark border-3"
                style="width:50px;"></a>
  
              
          </div>
        </div>
      
      </nav>  -->
    <!--header ends -->

<!-- chat starts -->
    <div class="c-1">
    <img class="profile" src="./../assets/images/p-1.jpg" alt="img"  />
      <h2>Durga</h2>
     
          <textarea
            placeholder="my suggestions..."
            name="msg"
            required
            class="text"
            id="text-comment"
          ></textarea>

          <button type="submit" id="cancel-comment" class="btn-cancel">Cancel</button>
          <button type="button" id="submit-comment"class="btn-sub">
            submit
          </button>
        </form>
      </div>
     <div>
        <div class="c-2">
            <img class="profile" src="./../assets/images/p-2.jpg" alt="img" />
            <h2>Leo Tolstoy</h2>
           <div class="p-sugges"> <p>War and Peace</p></div>
           <img class="t-up" src="./../assets/images/thumb-up.png" alt="img" >
           <img class="t-down"src="./../assets/images/thumb-down.png" alt="img" >
           
     </div>
     <div>
        <div class="c-2">
            <img class="profile" src="./../assets/images/p-3.jpg" alt="img" />
            <h2> Ernest Hemingway</h2>
           <div class="p-sugges"> <p>The Old Man and Sea </p></div>
           <img class="t-up" src="./../assets/images/thumb-up.png" alt="img" >
           <img class="t-down"src="./../assets/images/thumb-down.png" alt="img" >
           
     </div>
     <div>
        <div class="c-2">
            <img class="profile" src="./../assets/images/p-4.jpg" alt="img"  />
            <h2>Plato</h2>
           <div class="p-sugges"> <p>The Republic </p></div>
           <img class="t-up" src="./../assets/images/thumb-up.png" alt="img" >
           <img class="t-down"src="./../assets/images/thumb-down.png" alt="img" >
           
     </div>
     <div>
        <div class="c-2">
            <img class="profile" src="./../assets/images/p-5.jpg" alt="img"  />
            <h2>Marcus Aurelius</h2>
           <div class="p-sugges"> <p>Meditations </p></div>
           <img class="t-up" src="./../assets/images/thumb-up.png" alt="img" >
           <img class="t-down"src="./../assets/images/thumb-down.png" alt="img" >
           
     </div>
     <div>
        <div class="c-2">
            <img class="profile" src="./../assets/images/p-6.jpg" alt="img" />
            <h2>Martin Hagglund</h2>
           <div class="p-sugges"> <p>Martin Hagglund</p></div>
           <img class="t-up" src="./../assets/images/thumb-up.png" alt="img" >
           <img class="t-down"src="./../assets/images/thumb-down.png" alt="img" >
           
     </div>
     <div>
        <div class="c-2">
            <img class="profile" src="./../assets/images/p-7.jpg" alt="img" />
            <h2>Martin Hagglund</h2>
           <div class="p-sugges"> <p>Fundamental Principles </p></div>
           <img class="t-up" src="./../assets/images/thumb-up.png" alt="img" >
           <img class="t-down"src="./../assets/images/thumb-down.png" alt="img" >
           
     </div>
     <div>
        <div class="c-2">
            <img class="profile" src="./../assets/images/p-8.jpg" alt="img"  />
            <h2>Leo Tolstoy</h2>
           <div class="p-sugges"> <p>War and Peace</p></div>
           <img class="t-up" src="./../assets/images/thumb-up.png" alt="img" >
           <img class="t-down"src="./../assets/images/thumb-down.png" alt="img" >
           
     </div>
     <div>
        <div class="c-2">
            <img class="profile" src="./../assets/images/p-9.jpg" alt="img" />
            <h2>Leo Tolstoy</h2>
           <div class="p-sugges"> <p>War and Peace</p></div>
           <img class="t-up" src="./../assets/images/thumb-up.png" alt="img" >
           <img class="t-down"src="./../assets/images/thumb-down.png" alt="img" >
           
     </div>

     <!-- chat ends -->

     <!-- footer starts -->
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
      <a href="#" ><img class="fi" src="./assets/images/fb.jpg" alt="fb" /></a>
      <a href="#" ><img class="fi" src="./assets/images/twitter.png" alt="twitter" /></a>
      <a href="#" > <img class="fi" src="./assets/images/insta_icon.jpeg" alt="insta" /></a>
      </div>
    </div>
    <div class="copyrights">
      @copyrights 2023 Livre | All rights reserved
    </div>
<script src="./../assets/js/suggestion.js"></script>

    <!-- footer ends -->
  </body>
</html>