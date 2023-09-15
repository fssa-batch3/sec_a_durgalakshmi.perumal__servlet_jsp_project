
// get the details from localStorage
const adventure_buy_boks = JSON.parse(localStorage.getItem("formtoaddbuybooks")) ;
const admin_email = JSON.parse(localStorage.getItem("details"))

// for admin

// initialization of variable 
function buybooklist(ar,selector){
  let productContainer;
  let productImage;
  let productDescContainer;
  let bookNameText;
  let priceText;
  // let shoppingCartIcon;
  let buyButton;
let hr_card;
for (let i = 0; i < ar.length; i++) {

  // Create the product container
   productContainer = document.createElement("div");
  productContainer.classList.add("product");

  // Create the product image
   productImage = document.createElement("img");
  productImage.setAttribute("src", ar[i]["book_img"]);
  productImage.setAttribute("class", "product-image");
  productImage.alt = "book_image";

 // for hr tag
 hr_card = document.createElement("hr")
 hr_card.setAttribute("class", "hr")
 productImage.append(hr_card)
  // Create the product description container
   productDescContainer = document.createElement("div");
  productDescContainer.classList.add("desc");

  // Create the book name text node
   bookNameText = document.createTextNode(ar[i]["book_name"]);

  // Create the price text node
   priceText = document.createTextNode(ar[i]["book_price"]);



  // Create the buy button
  buyButton = document.createElement("a");
  buyButton.classList.add("buy_btn");
  buyButton.textContent = "Buy";
  buyButton.setAttribute("href", "../pages/pay.html" )

  editButton = document.createElement("a");
 editButton.setAttribute("class", "edit_btn btn btn-primary")
 editButton.setAttribute("href", "../pages/editbuybooks.html?id=" + ar[i]["id"])
 editButton.innerText = "Edit"
 productDescContainer.append(editButton)


  // Add the book name text, price text, shopping cart icon, and buy button to the product description container
  productDescContainer.append(bookNameText);
  productDescContainer.append(document.createElement('br'));
  productDescContainer.append(priceText);
  productDescContainer.append(document.createElement('br'));
  // productDescContainer.append(shoppingCartIcon);
  productDescContainer.append(buyButton);
  productDescContainer.append(editButton);


  // Add the product image and product description container to the product container
  productContainer.append(productImage);
  productContainer.append(productDescContainer);

  document.querySelector(selector).append(productContainer)
}
}

// for user

// initialization of variable 
function buybooklistuser(ar,selector){
  let productContainer;
  let productImage;
  let productDescContainer;
  let bookNameText;
  let priceText;
//   let shoppingCartIcon;
  let buyButton;
  let hr_card

for (let i = 0; i < ar.length; i++){
  // const book = ar[i];

  // Create the product container
   productContainer = document.createElement("div");
  productContainer.classList.add("product");

  // Create the product image
   productImage = document.createElement("img");
  productImage.setAttribute("src", ar[i]["book_img"]);
  productImage.setAttribute("class", "product-image");
  productImage.alt = "book_image";
  // hr 
  hr_card = document.createElement("hr")
  hr_card.setAttribute("class", "hr")
  productImage.append(hr_card)
  // Create the product description container
   productDescContainer = document.createElement("div");
  productDescContainer.classList.add("desc");

  // // Create the book name text node
  // const bookNameText = document.createTextNode(ar[i]["book_name"]);

  // // Create the price text node
  // const priceText = document.createTextNode(ar[i]["book_price"]);
// Create the book name element
 bookNameText = document.createElement('p');
bookNameText.innerText = ar[i]['book_name'];
bookNameText.setAttribute("class","book_title")

// Create the price element
 priceText = document.createElement('p');
priceText.innerText = ar[i]['book_price'];
priceText.setAttribute("class","book_price")

// div for buttons

 divbtn = document.createElement("div")
divbtn.classList.add("btndiv");

  // Create the buy button
   buyButton = document.createElement("a");
  buyButton.classList.add("buy_btn");
  buyButton.textContent = "Buy";
  buyButton.setAttribute("href", "../pages/pay.html" )

  //  cart_a = document.createElement("a");
  // cart_a.setAttribute("class", "add-cart");
  // cart_a.setAttribute("id", "cart");
  // cart_a.innerText = "Add to cart";
  


// create the cart button 
// const cartbutton = document.createElement("img");
// cartbutton.setAttribute("class", "cart-image")
// cartbutton.setAttribute("src","../assets/images/add-to-basket .png");
// cart_a.append(cartbutton)

  // Add the book name text, price text, shopping cart icon, and buy button to the product description container
  productDescContainer.append(bookNameText);
  productDescContainer.append(document.createElement('br'));
  productDescContainer.append(priceText);
  productDescContainer.append(document.createElement('br'));
  productDescContainer.append(divbtn);
  divbtn.append(buyButton);
  // divbtn.append(cart_a);

 


  // Add the product image and product description container to the product container
  productContainer.append(productImage);
  productContainer.append(productDescContainer);
  // productContainer.append()

  document.querySelector(selector).append(productContainer)
}
}
// fileter the product using id
function productAppend(type) {
    const productsection = adventure_buy_boks.filter((h) => h.section === type);
    return productsection;
  }
     // adventure
     const create_buyadventure_book = [];
  for (let i = 0; i < productAppend("adventure").length; i++) {
    create_buyadventure_book.push(productAppend("adventure")[i]);
    // console.log(create_buyadventure_book);
  }

  if(admin_email == "admindurga@gmail.com"){
    buybooklist(create_buyadventure_book, "#adventure");
  }
  else{
    buybooklistuser(create_buyadventure_book, "#adventure");
  }

    // triller
    let thriller_div_card;

    const create_buytriller_book = [];
    for(let i = 0; i < productAppend("triller").length;i++){
      create_buytriller_book.push(productAppend("triller")[i]);
      console.log(create_buytriller_book);
   }

  if(admin_email == "admindurga@gmail.com"){
    buybooklist(create_buytriller_book, "#thriller");
  }
  else{
    buybooklistuser(create_buytriller_book, "#thriller");
  }


// romantic
    let romantic__div_card;

    const create_buyromantic_book = [];
    for(let i = 0; i < productAppend("romantic").length;i++){
      create_buyromantic_book.push(productAppend("romantic")[i]);
   }

  if(admin_email == "admindurga@gmail.com"){
    buybooklist(create_buyromantic_book, "#romantic");
  }
  else{
    buybooklistuser(create_buyromantic_book, "#romantic");
  }
   
    // comedy
    let comedy_div_card;
 
    const create_buycomedy_book = [];
    for(let i = 0; i < productAppend("comedy").length;i++){
      create_buycomedy_book.push(productAppend("comedy")[i]);
   }

  if(admin_email == "admindurga@gmail.com"){
    buybooklist(create_buycomedy_book, "#comedy");
  }
  else{
    buybooklistuser(create_buycomedy_book, "#comedy");
  }
    // classic
    let classic_div_card;

    const create_buyclassic_book = [];
    for(let i = 0; i < productAppend("classic").length;i++){
      create_buyclassic_book.push(productAppend("classic")[i]);
   }

  if(admin_email == "admindurga@gmail.com"){
    buybooklist(create_buyclassic_book, "#classic");
  }
  else{
    buybooklistuser(create_buyclassic_book, "#classic");
  }

    // horror
    let horror_div_card;

    const create_buyhorror_book = [];
    for(let i = 0; i < productAppend("horror").length;i++){
      create_buyhorror_book.push(productAppend("horror")[i]);
   }

  if(admin_email == "admindurga@gmail.com"){
    buybooklist(create_buyhorror_book, "#horror");
  }
  else{
    buybooklistuser(create_buyhorror_book, "#horror");
  }
    // devotional
    let devotional_div_card;

    const create_buydevotional_book = [];
    for(let i = 0; i < productAppend("devotional").length;i++){
      create_buydevotional_book.push(productAppend("devotional")[i]);
   }
  //  if login person is admin show this buttons

  if(admin_email == "admindurga@gmail.com"){
    buybooklist(create_buydevotional_book, "#devotional");

    let create_a = document.createElement("a");
  create_a.setAttribute("href", "../pages/addbuybooks.html");

  let create_btn = document.createElement("button");
  create_btn.setAttribute("class", "add_btn");

  create_btn.innerText = "Add product";
  create_a.append(create_btn);

  document.querySelector(".sec1").append(create_a)
  }
  else{
    buybooklistuser(create_buydevotional_book, "#devotional");
  }


  
