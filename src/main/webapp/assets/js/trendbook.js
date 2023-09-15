

let addtrend = JSON.parse(localStorage.getItem("trendfrom"));
const admin_email = JSON.parse(localStorage.getItem("details"))
// for(let i = 0 ; i < addtrend.length; i++){
//   trendbox.push(addtrend[i]);
//   console.log(addtrend);
// }

//card//
if(admin_email == "admindurga@gmail.com"){


let div_card;
let img_card;
let a_card;
let edit_card;


for (let i = 0; i < addtrend.length; i++) {
  //whole_card//
 

   div_card = document.createElement("div")
  div_card.setAttribute("class", "card")
  div_card.style.height = "3%";
  // console.log(div_card)

  // card-img //
   img_card = document.createElement("img")
  img_card.setAttribute("src", addtrend[i]["img"])
  img_card.setAttribute("alt", addtrend[i]["alt"])
  img_card.setAttribute("class", "card-img-top")
  div_card.append(img_card)

   //book name//
    img_name = document.createElement("h2")
   img_name.setAttribute("class", "card-title")
   img_name.innerText = addtrend[i]["book_name"]
   div_card.append(img_name)


  //button-for-read//
  let div_read = document.createElement("div")
  div_read.setAttribute("class", "read-box")
  div_card.append(div_read)

  //read//
   a_card = document.createElement("a")
  a_card.setAttribute("class", "tbtn-1")
  a_card.setAttribute("href", addtrend[i]["bok_link"])
  a_card.innerText = "Read"
  div_read.append(a_card)

  //edit
  a_card = document.createElement("a")
  a_card.setAttribute("class", "tbtn-1")
  a_card.setAttribute("href","./trendedit.html?id="+addtrend[i]["id"])
  a_card.innerText = "EDIT"
  div_read.append(a_card)

  document.querySelector(".trend_div").append(div_card)


} 
let create_a = document.createElement("a")
create_a.setAttribute("href", "./addtrending_books.html");
create_a.innerText ="add trending books";


let create_btn = document.createElement("button");
create_btn.setAttribute("class", "btn btn-primary") ;

create_a.append("create_btn")

document.querySelector(".trend_div").append(create_a)
}
else{
// card 
let div_card;
let img_card;
let a_card;

    
for (let i = 0; i < addtrend.length; i++) {
  //whole_card//
 

  div_card = document.createElement("div")
  div_card.setAttribute("class", "divcard")
  div_card.style.height = "3%";
  // console.log(div_card)

  // card-img //
  img_card = document.createElement("img")
  img_card.setAttribute("src", addtrend[i]["img"])
  img_card.setAttribute("alt", addtrend[i]["alt"])
  img_card.setAttribute("class", "card-img-top")
  div_card.append(img_card)

   //book name//
   img_name = document.createElement("h2")
   img_name.setAttribute("class", "card-title")
   img_name.innerText = addtrend[i]["book_name"]
   div_card.append(img_name)


  //button-for-read//
  div_read = document.createElement("div")
  div_read.setAttribute("class", "read-box")
  div_card.append(div_read)

  //read//
  a_card = document.createElement("a")
  a_card.setAttribute("class", "tbtn-1")
  a_card.setAttribute("href", addtrend[i]["bok_link"])
  a_card.innerText = "Read"
  div_read.append(a_card)

  document.querySelector(".trend_div").append(div_card)

}

}



localStorage.setItem("trendfrom", JSON.stringify(addtrend));