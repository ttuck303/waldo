var relX, relY, char_modal;

$(function(){
  console.log("jQuery loaded and ready");
  char_modal = $(".character_select");
  char_modal.css("visibility", "hidden");
  $(".world_image").click(function(e){
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
    hide_char_modal();
  });
  $("#waldo_select").click(function(e){
    console.log("clicked Waldo");
    e.preventDefault();
    check_click("Waldo");
  });
  $("#odlaw_select").click(function(e){
    console.log("clicked Odlaw");
    e.preventDefault();
    check_click("Odlaw");
  });
  $("#whitebeard_select").click(function(e){
    console.log("clicked Whitebeard");
    e.preventDefault();
    check_click("Whitebeard");
  });
});

var hide_char_modal = function(){
  char_modal.css("visibility", "hidden");
};

var check_click = function(character){
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
    success: function(json){
      hide_char_modal();
      response_func( json, relX, relY, character);
    }, 
    error: function( xhr, status, errorThrown ){
      alert( "Sorry, there was a problem!" );
      console.log( "Error: " + errorThrown );
      console.log( "Status: " + status );
      console.dir( xhr );
    },
    complete: function( xhr, status ) {
      //alert( "The request is complete!" );
    },
    timeout: 5000
  });
};

function response_func(found, x, y, character){
  console.log("Ajax response received.");
  console.log("found status: "+ found);
  console.log("character: " + character);
  console.log("coordinates: x: " + x + " y: " + y);
  if (found){ 
    alert("You found "+ character + "!");
    character_found(character);
  } else {
    alert("Sorry, that's not "+ character +"! Please try again.");
  }
};

function character_found(character){
  $('.title:contains('+character+')').parent().addClass("found").remove();
};