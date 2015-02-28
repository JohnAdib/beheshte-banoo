// Find the right method, call on correct element
function launchFullscreen(element) {
  if(element.requestFullscreen) {element.requestFullscreen();
  } else if(element.mozRequestFullScreen) {element.mozRequestFullScreen();
  } else if(element.webkitRequestFullscreen) {element.webkitRequestFullscreen();
  } else if(element.msRequestFullscreen) {element.msRequestFullscreen();
  }
}

jQuery.fn.fadeOutAndRemove = function(speed){$(this).fadeOut(speed,function(){$(this).remove();})};

function barcodeCallback() {
 Navigate({
 url: location.href,
 replace: true,
 filter: 'list-cards'
 }).then(function() {
 $('#form-barcode').on('ajaxify:success', barcodeCallback);
 })
}
$('#form-barcode').on('ajaxify:success', barcodeCallback);


function kidsCallback() {
 Navigate({
 url: location.href,
 replace: true,
 filter: 'list-cards'
 }).then(function() {
 $('#form-kids').on('ajaxify:success', kidsCallback);
 })
}
$('#form-kids').on('ajaxify:success', kidsCallback);


route('*', function() {
// ***************************************************** Kids
// $(document).on('click', '.list-cards .fa-bullhorn', ...);

$(".list-cards").on( "click", ".fa-bullhorn", function( event ) {
  $(this)
    .addClass("hide")
    .parent().find('.fa-child').removeClass('hide');
});
$(".list-cards").on( "click", ".fa-child", function( event ) {
  $(this).parent().fadeOutAndRemove('fast');
});





// $(" .fa-bullhorn").click(function(){
// $(this)
//   .addClass("hide")
//   .parent().find('.fa-child').removeClass('hide');
// });
// $(".list-cards .fa-child").click(function(){
//   $(this).parent().fadeOutAndRemove('normal'); });

// $('#form-barcode').on('ajaxify:success', function() {
//   Navigate({
//     url: location.href,
//     replace: true,
//     filter: 'list-cards'
//   });
// });


// ***************************************************** Games
$(".list-cards").on( "click", ".fa-tty", function( event ) {
  $(this)
    .addClass("hide")
    .parent().find('.fa-times').addClass('hide')
    .parent().find('.fa-thumbs-up').removeClass('hide')
    .parent().find('.fa-thumbs-down').removeClass('hide');
});
$(".list-cards").on( "click", ".fa-times", function( event ) {
  $(this).parent().fadeOutAndRemove('fast');
});
$(".list-cards").on( "click", ".fa-thumbs-up", function( event ) {
  $(this).parent().fadeOutAndRemove('fast');
});
$(".list-cards").on( "click", ".fa-thumbs-down", function( event ) {
  $(this).parent().fadeOutAndRemove('fast');
});
$(".list-cards").on( "click", ".fa-reply", function( event ) {
  $("#barcode").focus();
});



// $(".list-cards .fa-tty").click(function(){
// $(this)
//   .addClass("hide")
//   .parent().find('.fa-times').addClass('hide')
//   .parent().find('.fa-thumbs-up').removeClass('hide')
//   .parent().find('.fa-thumbs-down').removeClass('hide');
// });
// $(".list-cards .fa-times").click(function(){
//   $(this).parent().fadeOutAndRemove('normal'); });
// $(".list-cards .fa-thumbs-up").click(function(){
//   $(this).parent().fadeOutAndRemove('normal'); });
// $(".list-cards .fa-thumbs-down").click(function(){
//   $(this).parent().fadeOutAndRemove('normal'); });
// $(".list-cards .fa-reply").click(function(){ $("#barcode").focus(); });

// $('#form-barcode').on('ajaxify:success', function() {
//   Navigate({
//     url: location.href,
//     replace: true,
//     filter: 'list-cards'
//   });
// });




});