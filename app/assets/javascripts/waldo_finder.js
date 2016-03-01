$(function(){
  console.log("jQuery loaded and ready");
  $(".t_large_image_holder img").click(function(e){
     var parentOffset = $(this).parent().offset(); 
     //or $(this).offset(); if you really just want the current element's offset
     var relX = e.pageX - parentOffset.left;
     var relY = e.pageY - parentOffset.top;
     console.log("Image was clicked.");
     console.log("parentOffset: " + parentOffset);
     console.log("relX: " + relX);
     console.log("relY: "+ relY);
  });
});