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
    <title>edimusic</title>
  </head>

  <body>
    <br />
    <form id="update_music_form">
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
      

        <br />
        <div class="d-grid d-md-block container">
          <button class="btn btn-success" id="btn-change" type="submit">change</button>
        </div>
        <br>
        <div class="d-grid d-md-block container">
          <button class="btn btn-danger" id="btn-delete" type="delete">Delete</button>
        </div>
      </div>
     
    </form>
    <script>

    //  get array from localstorage
      let musicbox = JSON.parse(localStorage.getItem("music-card"));
      console.log(musicbox);

      //url params
const url = window.location.search;
const url_params = new URLSearchParams(url)
const get_id = url_params.get("id");



let Music = musicbox.find(function(product){
let check_id = product["id"]
if( get_id ==  check_id){
  return true;
}
})
console.log(Music)

let image = document.getElementById("img").value;
let aud = document.getElementById("audio").value;

img.value = Music["img"]
audio.value = Music["audio"]


// For Edit
let form = document.getElementById("update_music_form")
form.addEventListener("submit", function(event){
  event.preventDefault();
  
  const audio_img = document.getElementById("img").value;
  const audio = document.getElementById("audio").value;


let music_edit = {
  img:audio_img,
 audio:audio,
}
// console.log(edit_obj);

// Assiging the objects
let checked_obj = Object.assign(Music,music_edit )
console.log(checked_obj);

// let index = box.indexOf(edit_obj);
//  console.log(index);

localStorage.setItem("music-card",JSON.stringify(musicbox))
alert("Successfully changed")
window.location.href = "../pages/musics.html";

})

let delete_card = document.getElementById("btn-delete");
delete_card.addEventListener("click", function (event) {
            event.preventDefault()
            let Index = box.indexOf(pro_obj)
            let msg = confirm("Are you sure want to delete your account")
            if (msg !== true) {
            return
            }
            else{
              box.splice(Index, 1);
                console.log(box);
                localStorage.setItem("music-card", JSON.stringify(box))
                window.location.href = "../pages/musics.html ";
            }
           
        })
          


       
    </script>