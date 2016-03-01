$(function(){
  console.log("jQuery loaded and ready");
  var char_modal = $(".character_select");
  char_modal.hide();
  $(".t_large_image_holder img").click(function(e){
    char_modal.offset({top: e.pageY, left: e.pageX}).show();
     var parentOffset = $(this).parent().offset(); 
     var relX = e.pageX - parentOffset.left;
     var relY = e.pageY - parentOffset.top;
     console.log("Image was clicked.");
     console.log("parentOffset: " + parentOffset);
     console.log("relX: " + relX);
     console.log("relY: "+ relY);
     console.log("pageX: " + e.pageX);
     console.log("pageY: " + e.pageY);
     console.log("showing modal");
  });
  $("#nevermind").click(function(e){
    console.log("hiding modal");
    e.preventDefault();
    char_modal.hide();
  });
});