<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
    />
    <title>addmusic</title>
  </head>
 
  <body>
    <br />
    <form id="music-form">
      <div class="mb-3 form-control container">
        <!-- div 1 -->
        <div>
          <label  for="img" class="form-label">Image url:</label>
          <input id="img" type="text" class="form-control" required />
        </div>
        <br />
        <!-- div 2 -->
        <div>
          <label for="text" class="form-label">audio</label>
          <input  id="audio" type="text" class="form-control" required />
        </div>
        <br />
    
        <div class="d-grid d-md-block container">
          <button class="btn btn-success" type="submit">Submit</button>
        </div>
      </div>
    </form>



    <script>




const musicForm = document.getElementById("music-form");

musicForm.addEventListener("submit", (event) => {
  event.preventDefault();
  let id = Date.now();
  const audio_img = document.getElementById("img").value;
  const audio = document.getElementById("audio").value;
  
  let newproduct = {
    "id" : id,
    "img": audio_img,
    "audio": audio,
  };
  
  let array = JSON.parse(localStorage.getItem("music-card"))
      console.log(array);

// Checking an array is null or not
    if(localStorage.getItem("music-card") != null){
      array = JSON.parse(localStorage.getItem("music-card"))
      array.push(newproduct);
    }


      localStorage.setItem("music-card", JSON.stringify(array));

  alert("Successfully added");
  window.location.href = "./musics.html";
});



    
        </script>
  </body>
  </html>