<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
       
        <link rel="stylesheet" href="../assets/css/buybooks.css">
        <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
    />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link
    rel="stylesheet"
    href="./../assets/css/footer.css"
  />
  <link
  rel="stylesheet"
  href="./../assets/css/header.css"
/>
        <title>Book Zone</title>
    </head>
    <style>


 </style>
    
<body>
 <!-- nav starts -->


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
          <img class="logo" src="../../assets/images/dulogo.png" alt="logo" />
        </div>
       
          <li class="nav-item head_btn">
            <a class="navbar-brand" href="../pages/mybooks.html">My books</a>
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
                <a class="dropdown-item" href="../pages/trendbooks.html">Trending books</a>
              </li>
              <li>
                <a class="dropdown-item" href="../pages/readbooks.html">Read books</a>
              </li>
              <li>
                <a class="dropdown-item" href="../pages/sugges.html">Suggestions</a>
              </li>
              <li>
                <a class="dropdown-item" href="../pages/buybooks.html">Buy books</a>
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
          <a class="navbar-brand" href="../pages/contactus.html">contact us</a>
        </li>

        <li class="nav-item head_btn">
          <a class="navbar-brand" href="../pages/login.html">log in </a>
        </li>
       
<!-- <div id="google_element"></div> -->

        <div class="flex-shrink-0 ">
          <a href="./pages/profile.html">
          <img src="./../assets/images/Screenshot 2023-04-04 135236.png"
            alt="Generic placeholder image" class="img-fluid rounded-circle border border-dark border-3"
            style="width:50px;"></a>

          
      </div>
    </div>
  
  </nav>
  <br>
  <header>
    <div class="nav ">
      <!--  cart icon-->
      <i class='bx bxs-cart' id="cart-icon"> </i>
      <!-- cart -->
      <div class="cart">
        <h2 class="cart-title">Your Cart</h2>
        <!-- content -->
        <div class="cart-content">
        </div>
        <!-- total -->
        <div class="total">
          <div class="total-title">Total</div>
          <div class="total-price">₹ 0</div>
        </div>
        <!-- buy button -->
        <button type="button" class="btn-buy">Buy Now</button>
        <!-- cart close -->
        <i class='bx bx-x' id="close-cart"></i>
      </div>
      <br>
    

    </div>
  </header>

      
            <div class="section-body">
              <div class="vertical-nav">
                  <ul>
                     
                   <a href="#adventure" style="text-decoration: none;color: white;">Adventure</a>
                    <a href="#thriller" style="text-decoration: none;color: white;">Thriller</a>
                   <a href="#romantic" style="text-decoration: none;color: white;">Romantic</a>
                    <a href="#comedy" style="text-decoration: none; color: white;">Comedy</a>
                   <a href="#classic" style="text-decoration: none; color: white;">classic</a>
                   <a href="#horror"style="text-decoration: none; color: white;" >horror</a>
                    <a href="#devotional" style="text-decoration: none; color: white;">devotional</a>
                    <!-- <li><a href="./addreadbooks.html">add books</a></li> -->
                    <li class="back_btn bok-type"> <a href="../index.html" style="text-decoration: none; color: white;">back</a></li>
                  </ul>
                 
              </div>
              <div class="sec1">
               <div><h4>adventure </h4></div>
                <div id="adventure" class="buydiv container"></div>
                <br>

                <div><h4>triller</h4></div>
                <div id="thriller" class="buydiv container"></div>
                <br>

                <div><h4>romantic</h4></div>
                <div id="romantic" class="buydiv container"></div>
                <br>

                <div><h4>comedy</h4></div>
                <div id="comedy" class="buydiv container"></div>
                <br>

                <div><h4>classic</h4></div>
                <div id="classic" class="buydiv container"></div>
                <br>

                <div><h4>horror</h4></div>
                <div id="horror" class="buydiv container"></div>
                <br>

                <div><h4>devotional</h4></div>
                <div id="devotional" class="buydiv container"></div>
 </div>
 
</div>
           
         <!-- footer   -->
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
                
          

                <script src="../assets/js/buybook.js"></script>
    </body>
 
<script src="../assets/js/cart.js">
 
</script>
</html>
