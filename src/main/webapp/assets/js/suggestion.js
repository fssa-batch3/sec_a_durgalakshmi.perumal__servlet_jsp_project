
let savechats = document.getElementById("submit-comment");
let cancelchats = document.getElementById("cancel-comment");
let userid = localStorage.getItem("details")


let obj ={};
let arr = [];


savechats.addEventListener("submit",function(event){
    event.preventDefault();
    let chats = document.getElementById("text-comment").value;
    console.log(chats)
    obj["chat"]=chats;
    obj["userid"]=userid;
    console.log(obj)
let data = JSON.parse(localStorage.getItem("suggestion-box")); 
console.log(data)
if (data== null){
    arr.push(obj);
    window.localStorage.setItem("suggestion-box",JSON.stringify(arr));

  
}
else{
    data.push(obj);
    window.localStorage.setItem("suggestion-box",JSON.stringify(data));
  
 }
})