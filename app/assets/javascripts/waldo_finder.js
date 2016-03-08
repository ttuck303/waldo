var relX, relY;

$(function(){
  console.log("jQuery loaded and ready");
  var char_modal = $(".character_select");
  char_modal.css("visibility", "hidden");
  $(".t_large_image_holder img").click(function(e){
    char_modal.offset({top: e.pageY, left: e.pageX}).css("visibility", "visible");
     var parentOffset = $(this).parent().offset(); 
     relX = e.pageX - parentOffset.left;
     relY = e.pageY - parentOffset.top;
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
  $("#waldo_select").click(function(e){
    console.log("clicked Waldo");
    e.preventDefault();
    check_click(5, 5, "Waldo");
  });
});

var check_click = function(x, y, character){
  $.ajax({
    url: "/click_check",
    data: { 
      id:  window.location.href.split("/").pop(),
      character: character, 
      x_coord: relX, 
      y_coord: relY 
    },
    type: 'GET',
    dataType: "json", 
    success: function( json ){
      console.log("response:" + json);
    }, // assuming here that data is the response bool, true or false 
    error: function( xhr, status, errorThrown ){
      alert( "Sorry, there was a problem!" );
      console.log( "Error: " + errorThrown );
      console.log( "Status: " + status );
      console.dir( xhr );
    },
    complete: function( xhr, status ) {
      alert( "The request is complete!" );
    },
    timeout: 5000
  });
};

function response_func(d, x, y, c){
  console.log("Ajax response received.");
};

function character_found(character){
  $('.title:contains('+character+')').parent().addClass("found");
};