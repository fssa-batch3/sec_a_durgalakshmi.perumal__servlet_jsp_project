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
    <form id="editbuybooksfrom">
        <div class="mb-3 form-control container">
          <!-- div 1 -->
          <div>
            <label  for="img" class="form-label">Image url:</label>
            <input id="buybook_img" type="text" class="form-control" required />
          </div>
          <br />
          <!-- div 2 -->
          <div>
            <label for="text" class="form-label">Name</label>
            <input  id="buy_bookname" type="text" class="form-control" required />
          </div>
          <br>
          <div>
            <label for="text" class="form-label">price</label>
            <input  id="book_price" type="text" class="form-control" required />
          </div>
          <br>
          <label for="section" class="form-label">Section </label>
          <select id="books" class="form-control" required>
            <option value=""></option>
            <option value="adventure">adventure</option>
            <option value="triller">triller</option>
            <option value="romantic">romantic</option>
            <option value="comedy">comedy</option>
            <option value="classic">classic</option>
            <option value="horror">horror</option>
            <option value="devotional">devotional</option>
  
          </select>
          
  
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



let box = JSON.parse(localStorage.getItem("formtoaddbuybooks"));

const url = window.location.search;
const url_params = new URLSearchParams(url)
const get_id = url_params.get("id");

let pro_obj = box.find(function(product){
  let check_id = product["id"];
  if (check_id == get_id) {
    return true;
  }
});

let bookimg = document.getElementById("buybook_img");
let bookname = document.getElementById("buy_bookname");
let bookprice = document.getElementById("book_price");
let book_type = document.getElementById("books");


bookimg.value = pro_obj["book_img"];
bookname.value = pro_obj["book_name"];
bookprice.value = pro_obj["book_price"];
book_type.value = pro_obj["section"]

let form = document.getElementById("editbuybooksfrom");
form.addEventListener("submit", function(event){
  event.preventDefault();
  
  let image = document.getElementById("buybook_img").value;
  let name = document.getElementById("buy_bookname").value;
  let price = document.getElementById("book_price").value; 
  let book_type = document.getElementById("books").value;

  let edit_obj = {
    book_img: image,
    book_name: name,
    book_price: price,
    section:book_type,
  };

  let checked_obj = Object.assign(pro_obj, edit_obj);

  let index = box.indexOf(pro_obj)
  console.log(index);
  localStorage.setItem("formtoaddbuybooks", JSON.stringify(box));
  alert("Successfully changed");
  window.location.href = "./buybooks.html";
});

let delete_card = document.getElementById("btn-delete");
delete_card.addEventListener("click", function(event) {
  event.preventDefault();
  let Index = box.indexOf(pro_obj);
  let msg = confirm("Are you sure you want to delete this item?");
  if (msg !== true) {
    return;
  } else {
    box.splice(Index, 1);
    localStorage.setItem("formtoaddbuybooks", JSON.stringify(box));
    window.location.href = "./buybooks.html";
  }
});

        </script>