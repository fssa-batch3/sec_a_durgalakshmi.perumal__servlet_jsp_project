<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>buynow</title>
    <style>
      body {
        background-color: #0e2d48;
      }
      .logo {
        margin-left: 600px;
      }
      .header {
        background-color: white;
      }
      h2 {
        font-size: 30px;
        margin-left: 600px;
        color: white;
      }
      .name-1 {
        height: 50px;
        width: 400px;
        color: white;
        font-size: 30px;
        margin-left: 40px;
      }
      .name {
        background-color: #9fbbd3;
        height: 40px;
        width: 500px;
        font-size: 20px;
        border-radius: 20px;
        margin-left: 505px;
      }
      .p-num {
        background-color: #9fbbd3;
        height: 40px;
        width: 500px;
        font-size: 20px;
        border-radius: 20px;
        margin-left: 350px;
      }
      .p-num-1 {
        height: 50px;
        width: 400px;
        color: white;
        font-size: 30px;
        margin-left: 40px;
      }
      .a-1 {
        height: 50px;
        width: 400px;
        color: white;
        font-size: 30px;
        margin-left: 40px;
      }
      .aa-1 {
        background-color: #9fbbd3;
        height: 40px;
        width: 500px;
        font-size: 20px;
        border-radius: 20px;
        margin-left: 200px;
      }
      .aa-2 {
        background-color: #9fbbd3;
        height: 40px;
        width: 500px;
        font-size: 20px;
        border-radius: 20px;
        margin-left: 200px;
      }
      .bb-1 {
        background-color: #9fbbd3;
        height: 40px;
        width: 200px;
        font-size: 20px;
        border-radius: 20px;
        margin-left: 465px;
      }
      .bb-2 {
        background-color: #9fbbd3;
        height: 40px;
        width: 150px;
        font-size: 20px;
        border-radius: 20px;
        margin-left: 25px;
      }
      .btn-1 {
        margin-left: 720px;
        height: 80px;
        width: 500px;
        background-color: #9fbbd3;
        color: #0e2d48;
        border-radius: 10px;
        font-size: 25px;
        border: none;
        margin-top: 200px;
      }
      .btn-1:hover {
        background-color: #5b7c98;
      }
    </style>
  </head>
  <body>
    <div class="header">
      <img class="logo" alt="books" src="./../assets/images/dulogo.png" />
    </div>

    <div class="con-1">
      <h2>CONTACT DETAILS</h2>
      <hr />
      <form>
        <label class="name-1"><b>NAME</b></label>
        <input
          class="name"
          type="text"
          placeholder="Enter Name"
          required
        /><br />
        <label class="p-num-1"><b>PHONE NUMBER</b></label>
        <input
          class="p-num"
          type="tel"
          placeholder="Enter phone number"
        /><br />

        <h2>ADDRESS</h2>
        <hr />
        <label class="a-1">HOUSE NO/BUILDING NAME</label>
        <input class="aa-1" type="text" /><br />
        <label class="a-1">ROAD NAME/AREA/COLONY</label>
        <input class="aa-2" type="text" /><br />
        <label class="a-1"> PIN CODE</label>
        <input class="bb-1" type="tel" />
        <label class="a-1">CITY</label>
        <input class="bb-2" type="text" /><br />
        <label class="a-1">NEARBY LOCATION (optional)</label>
        <input class="aa-1" type="text" />
      </form>

      <a href="./pay.html"
        ><button class="btn-1">SAVE ADDRESS AND CONTINUE</button></a
      >
    </div>
  </body>
</html>
