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
