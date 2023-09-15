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
    <title>edititem</title>
  </head>
 
  <body>
    <br />
    <form id="update_form">
      <div class="mb-3 form-control container">
        <!-- div 1 -->
        <div>
          <label  for="img" class="form-label">Image url:</label>
          <input id="img_url" type="text" class="form-control" required />
        </div>
        <br />
        <!-- div 2 -->
        <div>
          <label for="text" class="form-label">Book name:</label>
          <input  id="bok_name" type="text" class="form-control" required />
        </div>
        <br />
        <!-- div 3 -->
        <div>
          <label  for="text" class="form-label">Pdf url:</label>
          <input  id="pdf_url" type="text" class="form-control" required />
        </div>

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
      let box = JSON.parse(localStorage.getItem("trendfrom"));
      console.log(box);

      //url params
const url = window.location.search;
const url_params = new URLSearchParams(url)
const get_id = url_params.get("id");

console.log(get_id);
let pro_obj = box.find(function(product){
let check_id = product["id"];
if( check_id == get_id){
  return true;
}
})
console.log(pro_obj);

let book_image = document.getElementById("img_url");
let book_name = document.getElementById("bok_name");
let book_link = document.getElementById("pdf_url");

book_image.value = pro_obj["img"]
book_name.value = pro_obj["book_name"]
book_link.value = pro_obj["bok_link"]

// For Edit
let form = document.getElementById("update_form")
form.addEventListener("submit", function(event){
  event.preventDefault();
  
let image = document.getElementById("img_url").value;
let name = document.getElementById("bok_name").value;
let link = document.getElementById("pdf_url").value; 

let edit_trendbok = {
  img:image,
  book_name:name,
  bok_link:link,
}
// console.log(edit_obj);

// Assiging the objects
let checked_trendbok = Object.assign(pro_obj, edit_trendbok)
console.log(checked_trendbok);

// let index = box.indexOf(edit_obj);
//  console.log(index);

localStorage.setItem("trendfrom",JSON.stringify(box))

alert("Successfully changed")

window.location.href = "../pages/trendbooks.html";

})

let delete_trendbok = document.getElementById("btn-delete");
delete_trendbok.addEventListener("click", function (event) {
            event.preventDefault()
            let Index = box.indexOf(pro_obj)
            let msg = confirm("Are you sure want to delete your account")
            if (msg !== true) {
            return
            }
            else{
              box.splice(Index, 1);
                console.log(box);
                localStorage.setItem("trendfrom", JSON.stringify(box))
                window.location.href = "../pages/trendbooks.html";
            }
         
        })
          


       
    </script>