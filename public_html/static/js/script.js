// Find the right method, call on correct element
function launchFullscreen(element) {
  if(element.requestFullscreen) {element.requestFullscreen();
  } else if(element.mozRequestFullScreen) {element.mozRequestFullScreen();
  } else if(element.webkitRequestFullscreen) {element.webkitRequestFullscreen();
  } else if(element.msRequestFullscreen) {element.msRequestFullscreen();
  }
}
jQuery.fn.fadeOutAndRemove = function(speed){$(this).fadeOut(speed,function(){$(this).remove();})};



// ***************************************************** Kids
function bindKids() {
  $('#form-kids').on('ajaxify:success', function() {
    Navigate({
      url: location.href,
      replace: true,
      filter: 'list-cards'
    })
  });
}
$(window).on('statechange', function() {
  history.state.url.indexOf('kids')
  if(history.state && history.state.url.indexOf('kids') > -1 && !history.state.replace) {
    bindKids();
  }
});
bindKids();


// ***************************************************** Games
function bindBarcode() {
  $('#form-barcode').on('ajaxify:success', function() {
    Navigate({
      url: location.href,
      replace: true,
      filter: 'list-cards'
    })
  });
}

$(window).on('statechange', function() {
  history.state.url.indexOf('game')
  if(history.state && history.state.url.indexOf('game') > -1 && !history.state.replace) {
    bindBarcode();
  }
});
bindBarcode();


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

});