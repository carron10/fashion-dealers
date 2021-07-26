/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



/*var url = window.location.href;
 var filename = url.split('/').pop();*/

document.onreadystatechange = function () {
    if (document.readyState !== "complete") {
        document.querySelector(
                "body").style.visibility = "hidden";
        document.querySelector(
                "#loader").style.visibility = "visible";
    } else {
        document.querySelector(
                "#loader").style.display = "none";
        document.querySelector(
                "body").style.visibility = "visible";
    }
};

     