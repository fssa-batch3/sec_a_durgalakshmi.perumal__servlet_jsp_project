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
    <title>addbuybooks</title>
  </head>
 
  <body>
    <br />

    <h1>ADD BUY BOOKS</h1>
    <form id="formtoaddbuybooks">
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
          <button class="btn btn-success" type="submit">Submit</button>
        </div>
      </div>
    </form>
<script>


const addbooks = document.getElementById("formtoaddbuybooks"); 
addbooks.addEventListener("submit", function(event) {
  event.preventDefault();

  let id = Date.now();
  let bookimg = document.getElementById("buybook_img").value;
  let bookname = document.getElementById("buy_bookname").value;
  let bookprice = document.getElementById("book_price").value;
  let book_type = document.getElementById("books").value;
  let newbookstobuy = {
    "id": id,
    "book_img": bookimg,
    "book_name": bookname,
    "book_price": bookprice,
    "section":book_type
  };

  let array = JSON.parse(localStorage.getItem("formtoaddbuybooks")) 

  
createProduct(newbookstobuy,array,"formtoaddbuybooks")



function createProduct(object, arr, LS_array) {
  if (localStorage.getItem(LS_array) !== null) {
    arr = JSON.parse(localStorage.getItem(LS_array));
  }
  arr.push(object);
  localStorage.setItem(LS_array, JSON.stringify(arr));
  alert("Product successfully added");
  window.location.href = "./buybooks.html";
}



})



 
</script>
</body>
</html>