  // get the details from local storage 
      const adventure_boks = JSON.parse(localStorage.getItem("readbooks"))
      const admin_email = JSON.parse(localStorage.getItem("details"))

// array 




      //card for admin//

      // initialization of variable 
       function readbooklist(ar, selector){
      let div_card;
      let img_card;
      let img_name;
      let hr;
      let a_card;
    

      for (let i = 0; i < ar.length; i++) {
        //whole_card/
        div_card = document.createElement("div")
        div_card.setAttribute("class", "box-1")
       
        // card-img //
        img_card = document.createElement("img")
        img_card.setAttribute("src", ar[i]["img"])
        img_card.setAttribute("alt", ar[i]["alt"])
        img_card.setAttribute("class", "tb-1")
        div_card.append(img_card)

        //book name//
        img_name = document.createElement("h2")
        img_name.setAttribute("class", "bok_name")
        img_name.innerText = ar[i]["book_name"]
        div_card.append(img_name)

        // for hr tag
        hr_card = document.createElement("hr")
        div_card.append(hr_card)

        //button-for-read//
        div_read = document.createElement("div")
        div_read.setAttribute("class", "read-box")
        div_card.append(div_read)

        //read//
        a_card = document.createElement("a")
        a_card.setAttribute("class", "tbtn-1")
        a_card.setAttribute("href", ar[i]["bok_link"])
        a_card.innerText = "Read"
        div_read.append(a_card)

        //edit
        let e_card = document.createElement("a")
        e_card.setAttribute("class", "tbtn-1")
        e_card.setAttribute("href","./editreadbooks.html?id="+ar[i]["id"])
        e_card.innerText = "EDIT"
        div_read.append(e_card)

        document.querySelector(selector).append(div_card)
      }
    }

// for user
function readbooklistuser(ar, selector){
      let div_card;
      let img_card;
      let img_name;
      let hr;
      let a_card;


      for (let i = 0; i < ar.length; i++) {
        //whole_card//

        div_card = document.createElement("div")
        div_card.setAttribute("class", "box-1")
        // console.log(div_card)

        // card-img //
        img_card = document.createElement("img")
        img_card.setAttribute("src", ar[i]["img"])
        img_card.setAttribute("alt", ar[i]["alt"])
        img_card.setAttribute("class", "tb-1")
        div_card.append(img_card)

        //book name//
        img_name = document.createElement("h2")
        img_name.setAttribute("class", "bok_name")
        img_name.innerText = ar[i]["book_name"]
        div_card.append(img_name)

        // for hr tag
        hr_card = document.createElement("hr")
        hr_card.setAttribute("class", "hr")
        div_card.append(hr_card)


        //button-for-read//
        div_read = document.createElement("div")
        div_read.setAttribute("class", "read-box")
        div_card.append(div_read)

        //read//
        a_card = document.createElement("a")
        a_card.setAttribute("class", "tbtn-1")
        a_card.setAttribute("href", ar[i]["bok_link"])
        a_card.innerText = "Read"
        div_read.append(a_card)

        document.querySelector(selector).append(div_card)
      }
    }
 
  function productAppend(type) {
    const productsection = adventure_boks.filter((h) => h.section == type);
    return productsection;
  }
     // adventure
     const create_adventure_book = [];
  for (let i = 0; i < productAppend("adventure").length; i++) {
    create_adventure_book.push(productAppend("adventure")[i]);
    console.log(create_adventure_book);
  }
 

  if(admin_email == "admindurga@gmail.com"){
    readbooklist(create_adventure_book, "#adventure");
  }
  else{
    readbooklistuser(create_adventure_book, "#adventure");
  }
  

    // triller
    let thriller_div_card;

    const create_triller_book = [];
    for(let i = 0; i < productAppend("triller").length;i++){
      create_triller_book.push(productAppend("triller")[i]);
      console.log(create_triller_book);
   }
  

   if(admin_email == "admindurga@gmail.com"){
    readbooklist(create_triller_book, "#thriller");
  }
  else{
    readbooklistuser(create_triller_book, "#thriller");
  }

    // romantic
    let romantic_book;

    const create_romantic_book = [];
    for(let i = 0; i < productAppend("romantic").length;i++){
      create_romantic_book.push(productAppend("romantic")[i]);
   }


   if(admin_email == "admindurga@gmail.com"){
    readbooklist(create_romantic_book, "#romantic");
  }
  else{
    readbooklistuser(create_romantic_book, "#romantic");
  }
  
   
    // comedy
    let comedy_book;

    const create_comedy_book = [];
    for(let i = 0; i < productAppend("comedy").length;i++){
      create_comedy_book.push(productAppend("comedy")[i]);
   }


   if(admin_email == "admindurga@gmail.com"){
    readbooklist(create_comedy_book, "#comedy");
  }
  else{
    readbooklistuser(create_comedy_book, "#comedy");
  }

 // classic
    let classic_book;

    const create_classic_book = [];
    for(let i = 0; i < productAppend("classic").length;i++){
      create_classic_book.push(productAppend("classic")[i]);
   }


   if(admin_email == "admindurga@gmail.com"){
    readbooklist(create_classic_book, "#classic");
  }
  else{
    readbooklistuser(create_classic_book, "#classic");
  }


// horror
    let horror_book;

    const create_horror_book = [];
    for(let i = 0; i < productAppend("horror").length;i++){
      create_horror_book.push(productAppend("horror")[i]);
   }


   if(admin_email == "admindurga@gmail.com"){
    readbooklist(create_horror_book, "#horror");
  }
  else{
    readbooklistuser(create_horror_book, "#horror");
  }

  //  devotional 

let devotional_book;

    const create_devotional_book = [];
    for(let i = 0; i < productAppend("devotional").length;i++){
      create_devotional_book.push(productAppend("devotional")[i]);
   }
  

   if(admin_email == "admindurga@gmail.com"){
    readbooklist(create_devotional_book, "#devotional");
  
// create the add books button only for the admin  
  let create_a = document.createElement("a");
  create_a.setAttribute("href", "./addreadbooks.html");

  let create_btn = document.createElement("button");
  create_btn.setAttribute("class", "add_btn");
  create_btn.innerText = "Add product";
  create_a.append(create_btn);

  document.querySelector("body").append(create_a)
  }
  else{
    readbooklistuser(create_devotional_book, "#devotional");
  }

  // search
    
  // localStorage.setItem("readbooks", JSON.stringify(ar));
  
  // let searchbar = document.getElementById("search_input");
  // const searchcard = document.getElementsByClassName("readdiv");


  // searchbar.addEventListener("input", () => {
  //   for (let i = 0; i < searchcard.length; i++) {
  //     const element = searchcard[i];

  //     if (
  //       element.innerHTML.toLowerCase().includes(searchbar.value.toLowerCase())
  //     )
  //      {
  //       element.style.display = "block";
  //     } 
  //     else {
  //       element.style.display = "none";
  //     }
  //   }
  // });