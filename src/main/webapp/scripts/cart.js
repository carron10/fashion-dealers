/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function updateCart() {
    let ca = document.cookie.split(';');
    var j=0;
    for (let i = 0; i < ca.length; i++) {
        if(ca[i].startsWith("product")){
            j++;
        }
    }
    $("#my_cart").text(j);
}
$(document).ready(function () {
    updateCart();
    $(".addtocart").click(
            function () {
                window.alert("Clieckedbuttom");
              addToCart("product"+this.attr("id"),1,14);
            }
    );
});

function addToCart(cname, cvalue, exdays) {
  const d = new Date();
  d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
  let expires = "expires="+d.toUTCString();
  document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
  alert(cname);
   updateCart();
}