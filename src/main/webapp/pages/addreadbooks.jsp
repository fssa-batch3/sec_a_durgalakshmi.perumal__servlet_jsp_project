<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
   <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
    />
<meta charset="ISO-8859-1">
<title>ReadBooks Form</title>
</head>
<body>
   <br />
    <form id="bookform" action="addreadbooks" method="post">
      <div class="mb-3 form-control container">
        <!-- div 1 -->
        <div>
          <label  for="img" class="form-label">Image url:</label>
          <input id="img_url" type="text" class="form-control" name="imagelink" required />
        </div>
        <br/>
        <!-- div 2 -->
        <div>
          <label for="text" class="form-label">Book name:</label>
          <input  id="bok_name" type="text" class="form-control"  name="bookname" required />
        </div>
        <br/>
        <!-- div 3 -->
        <div>
          <label  for="text" class="form-label">Pdf url:</label>
          <input  id="pdf_url" type="text" class="form-control"  name="pdflink" required />
        </div>
        <div class="col">
          <label for="section" class="form-label">Section </label>
          <select id="books" class="form-control" name="category"  required>
              <option value=""></option>
                 <option value="adventure">ADVENTURE</option>
              <option value="triller">THRILLER</option>
              <option value="romantic">ROMANTIC</option>
              <option value="comedy">COMEDY</option>
              <option value="classic">CLASSIC</option>
              <option value="horror">HORROR</option>
              <option value="devotinal">DEVOTIONAL</option>
            </select>
            <br />
        <div class="d-grid d-md-block container">
          <button class="btn btn-primary" type="submit">Submit</button>
        </div>
      </div>
      </div>
    </form>


    <!-- JAVA SCRIPT -->
    <script>

      const additem = document.getElementById("bookform")
      additem.addEventListener("submit", function (event) {
        event.preventDefault();


        let id = Date.now();
        let Image_url = document.getElementById("img_url").value;
        let book_name = document.getElementById("bok_name").value;
        let pdf_url = document.getElementById("pdf_url").value;
        let book_type = document.getElementById("books").value;
      

        let newproduct = {
        "id" : id,
        "img": Image_url,
        "book_name": book_name,
        "bok_link": pdf_url,
        "section":book_type
        
      };
      

      let array=JSON.parse(localStorage.getItem("readbooks"))

createProduct(newproduct,array,"readbooks")



function createProduct(object, arr, LS_array) {
          //  checking array is null or not
           if (localStorage.getItem(LS_array) != null){
               arr = JSON.parse(localStorage.getItem(LS_array))
               arr.push(object);
          }
          localStorage.setItem(LS_array, JSON.stringify(arr));
          alert("Book successfully added")
          window.location.href = "./readbooks.html";
    }
   
  })

     
    </script>
   
  </body>
</html>
