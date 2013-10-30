$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  // var $newEventForm = $(this);

  // var url = $newEventForm.attr("action");

  // var data = $newEventForm.serialize();

  // $post(url, data, );


  $( "form" ).on( "submit", function( event ) {
      event.preventDefault();
      var url = $( this ).attr( "action" );
      var data = $( this ).serialize();
      
      $.post(url, data, function( response ) {
        $( ".response" ).html(response);
      });
  });



});


  $( "form" ).serialize();
