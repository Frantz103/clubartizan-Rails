/* 
 Author: Frantz Augustin
 Liscence: Available for the public

*/


// this function change the name of the artist in the ourstories pages every 1650 millisecond.

function textFlap() {
  "use strict"

var text = ["Photographer", "Painter", "Sculptor", "Artist", "Artisan", "Photographer"];

var moving_text=Math.floor(Math.random()*text.length);

// this stamment make this function run only for the ourstories page, since we are using rails turbolinks.

if(window.location.href.indexOf("ourstories") > -1)
document.getElementById('movingWord').innerHTML=text[moving_text];

}
 
// This set the time to 1650ms

var mtext = setInterval(textFlap, 1650);



/* 

 This function create the dropdown menu for the header.

*/
$(document).ready(function ()  {
// This open and close the menu when people clik on the humberger icon.

  $( '.sidemenu' ).click(function(){


  $(".responsive-menu").toggleClass("expand");
   $(".container").toggleClass('mask');
  $(".coverMask").toggleClass('mask');

  // this mask the button for the menu. Its a hack i ll find a fix soon. 
  $("button").toggleClass("opacity");
  $("section").toggleClass("mask");
  $(".width1080 ").toggleClass("mask");

        
    });


// this remove you have the rails notice after 6 seconds

  setTimeout(function(){
    $('.flash').remove();
  }, 6000);



});