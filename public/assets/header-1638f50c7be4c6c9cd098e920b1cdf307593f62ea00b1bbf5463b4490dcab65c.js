function textFlap(){"use strict";var t=["Photographer","Painter","Sculptor","Artist","Artisan","Photographer"],e=Math.floor(Math.random()*t.length);window.location.href.indexOf("ourstories")>-1&&(document.getElementById("movingWord").innerHTML=t[e])}var mtext=setInterval(textFlap,1650);$(document).ready(function(){$(".sidemenu").click(function(){$(".responsive-menu").toggleClass("expand"),$(".container").toggleClass("mask"),$(".coverMask").toggleClass("mask"),$("button").toggleClass("opacity"),$("section").toggleClass("mask"),$(".width1080 ").toggleClass("mask")}),setTimeout(function(){$(".flash").remove()},6e3)});