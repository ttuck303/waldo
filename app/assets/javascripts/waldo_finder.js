$(function(){
  console.log("jQuery loaded and ready");
  var char_modal = $(".character_select");
  char_modal.css("visibility", "hidden");
  $(".t_large_image_holder img").click(function(e){
    char_modal.offset({top: e.pageY, left: e.pageX}).css("visibility", "visible");
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
    char_modal.css("visibility", "hidden");
  });
});

var check_click = function(x, y, character){
  $.ajax({
    url: "click_check",
    data: { character: character, x_coord: x, y_coord: y },
    type: 'GET',
    dataType: :json, 
    success: response_func(data, x, y, character), // assuming here that data is the response bool, true or false 
    timeout: 5000,
    debugger
  });
};

function respo

function character_found(character){
  $('.title:contains('+character+')').parent().addClass("found");
};