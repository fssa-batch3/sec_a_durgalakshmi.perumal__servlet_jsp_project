<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>happy</title>
     <link rel="stylesheet" href="./../assets/css/music.css" />
     <link rel="stylesheet" href="./../assets/css/header-books.css" /> 
    <link
    rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
  />
  <link
  rel="stylesheet"
  href="./../assets/css/header.css"
/>
<link
rel="stylesheet"
href="./../assets/css/footer.css"
/>
  </head>
  <style>
/* Style for the song box container */





  </style>
  <body>
      <!--nav starts-->

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
              <img class="logo" src="./../assets/images/dulogo.png" alt="logo" />
            </div>
           
              <li class="nav-item head_btn">
                <a class="navbar-brand" href="./mybooks.html">My books</a>
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
  
  
         <!-- <div class="section-body">
              <div class="vertical-nav">
                  <ul>
                     
                      <li><a href="#Adventure">HAPPY</a></li>
                      <li><a href="#Thriller">SAD</a></li>
                      <li><a href="#Romantic">TRILLER</a></li>
                      <li><a href="#Comedy">CRASY</a></li>
                      <li><a href="./addmusic.html">add music</a></li> -->

                      <!-- <li class="back_btn"> <a href="#">back</a></li>
                  </ul>
                 
              </div>   -->
   
    <!-- footer starts       -->
    <div class="adddiv"></div>

    <!-- footer ends  -->
    <script>
    
    
// get details from localStorage and store in a variable 
const musicbox = JSON.parse(localStorage.getItem("music-card"));
const admin_email = JSON.parse(localStorage.getItem("details"))
console.log(musicbox);


if(admin_email == "admindurga@gmail.com"){
//  starts Card

// initialization of variable 
let div_songbox;
let img_piano;
let audio;

for (let i = 0; i < musicbox.length; i++) {

  // createing the whole div 
  div_songbox = document.createElement("div");
  div_songbox.setAttribute("class", "c-1");
  

  // Piano img
  img_piano = document.createElement("img");
  img_piano.setAttribute("src", musicbox[i].img);
  img_piano.setAttribute("alt", "song-img");
  img_piano.setAttribute("class", "piano");
  div_songbox.append(img_piano);

  // Audio
  audio = document.createElement("audio");
audio.setAttribute("class", "audio");
audio.setAttribute("src", musicbox[i].audio);
audio.setAttribute("controls", "");
div_songbox.append(audio);
//edit btn
edit_music = document.createElement("a")
edit_music.setAttribute("class", "tbtn-1")
edit_music.setAttribute("href","./editmusic.html?id="+musicbox[i]["id"])
edit_music.innerText = "EDIT"
div_songbox.append(edit_music)

 

  document.querySelector("body").append(div_songbox);
}

let create_a = document.createElement("a")
create_a.setAttribute("href", "./addmusic.html");
create_a.innerText ="add music";


let create_btn = document.createElement("button");
create_btn.setAttribute("class", "btn btn-primary") ;

create_a.append("create_btn")

document.querySelector(".adddiv").append(create_a)
}
else{
  // Card
let div_songbox;
let img_piano;
let audio;

for (let i = 0; i < musicbox.length; i++) {
  div_songbox = document.createElement("div");
  div_songbox.setAttribute("class", "c-1");
  // console.log(div_songbox);

  // Piano img
  img_piano = document.createElement("img");
  img_piano.setAttribute("src", musicbox[i].img);
  img_piano.setAttribute("alt", "song-img");
  img_piano.setAttribute("class", "piano");
  div_songbox.append(img_piano);

  // Audio
  audio = document.createElement("audio");
audio.setAttribute("class", "audio");
audio.setAttribute("src", musicbox[i].audio);
audio.setAttribute("controls", "");
div_songbox.append(audio);

document.querySelector(".adddiv").append(div_songbox)
}}
localStorage.setItem("music-card", JSON.stringify(musicbox));

    </script>
  </body>
</html>
