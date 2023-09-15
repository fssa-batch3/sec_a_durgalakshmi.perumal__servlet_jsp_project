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
    <title>additem</title>
  </head>
 
  <body>
    <br />
    <form id="trendfrom">
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
          <button class="btn btn-success" type="submit">Submit</button>
        </div>
<br>
       
         <a href="./editreadbooks.html">change</a>
      </div>
    </form>


    <!-- JAVA SCRIPT -->
    <script>

      const additem = document.getElementById("trendfrom")
      additem.addEventListener("submit", function (event) {
        event.preventDefault();


        let id = Date.now();
        let Image_url = document.getElementById("img_url").value;
        let book_name = document.getElementById("bok_name").value;
        let pdf_url = document.getElementById("pdf_url").value;
        // console.log("1");

        let trendnew = {
         "id" : id,
        "img": Image_url,
        "book_name": book_name,
        "bok_link": pdf_url,
        
      };
      // console.log("2");

      let array=JSON.parse(localStorage.getItem("trendfrom"))
      console.log(array);

// Checking an array is null or not
    if(localStorage.getItem("trendfrom") != null){
      array = JSON.parse(localStorage.getItem("trendfrom"))
      
    }
    array.push(trendnew);
    //   console.log(trendnew);

      localStorage.setItem("trendfrom", JSON.stringify(array));
       alert("successfully added")
       window.location.href ="./trendbooks.html";

      })

   

     
    </script>
   
  </body>
</html>
