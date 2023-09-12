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
          <input id="img_url" type="text" class="form-control" value="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfgixp7l1nMDGmmQW81FrvygGhVzfwEAKDlg&usqp=CAU"name="imagelink" required />
        </div>
        <br/>
        <!-- div 2 -->
        <div>
          <label for="text" class="form-label">Book name:</label>
          <input  id="bok_name" type="text" class="form-control" value="The East India" name="bookname" required />
        </div>
        <br/>
        <!-- div 3 -->
        <div>
          <label  for="text" class="form-label">Pdf url:</label>
          <input  id="pdf_url" type="text" class="form-control" value="https://www.pdfbooksworld.com/bibi/pre.html?book=186.epub" name="pdflink" required />
        </div>
        <div class="col">
          <label for="section" class="form-label">Section </label>
          <select id="books" class="form-control" name="category" value="CLASSIC" required>
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
</body>
</html>