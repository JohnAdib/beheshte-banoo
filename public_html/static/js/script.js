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
  history.state.url.indexOf('kid')
  if(history.state && history.state.url.indexOf('kid') > -1 && !history.state.replace) {
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
  // ********************************************************************** Kids
  $(".list-cards").on( "click", ".fa-bullhorn", function( event ) {
    $(this)
      .addClass("hide")
      .parent().find('.fa-child').removeClass('hide');
  });
  $(".list-cards").on( "click", ".fa-child", function( event ) {
    $(this).parent().fadeOutAndRemove('normal');
  });


  // ********************************************************************** Games
  $(".list-cards").on( "click", ".fa-play", function( event ) {
    $(this)
      .addClass("hide")
      .parent().find('.fa-times').addClass('hide')
      .parent().find('.fa-thumbs-up').removeClass('hide')
      .parent().find('.fa-thumbs-down').removeClass('hide');
  });
  $(".list-cards").on( "click", ".fa-times", function( event ) {
    $(this).parent().fadeOutAndRemove('normal');
  });
  $(".list-cards").on( "click", ".fa-thumbs-up", function( event ) {
    $(this).parent().fadeOutAndRemove('normal');
  });
  $(".list-cards").on( "click", ".fa-thumbs-down", function( event ) {
    $(this).parent().fadeOutAndRemove('normal');
  });
  $(".list-cards").on( "click", ".fa-reply", function( event ) {
    $("#barcode").focus();
  });


  // ********************************************************************** Register
  $( "#country_" ).change(function() {
    // if iran selected
    if(this.value==101)
    {
      $('.nationalcode').removeClass('hide');
      $('.passport').addClass('hide');
      $('.province').removeClass('disabled');
      $('.province select').prop('disabled', false);
      $('.province select').prop('value', '18');
    }
    else
    {
      $('.passport').removeClass('hide');
      $('.nationalcode').addClass('hide');
      $('.province').addClass('disabled');
      $('.province select').prop('disabled', true);
      $('.province select').prop('value', false);
    }
  });
  // $('.form').ajaxifyCallbacks({complete: function(data){
  //   if(data.status == 1){ $('.form')[0].reset(); }
  // } });


});





// *********************************************************** barcode reader
(function(root, $) {
  root.barcodeOptions = {
    min: 5,
    max: 35,
    timeout: 5
  };

  var time = 0,
      keys = '';

  var timeout = 0;
  $(document.body).keydown(function(e) {
    if(timeout) clearTimeout(timeout);
    else time = Date.now();

    timeout = setTimeout(function() {
      var elapsed = Date.now() - time;
      var len = keys.length - 5;
      if(len/elapsed < barcodeOptions.timeout &&
         len > barcodeOptions.min &&
         len < barcodeOptions.max &&
         keys.slice(-5) === 'Enter') {

        $('#barcode').val(keys.slice(0, -5).toEnglish());
      }
      time = 0;
      timeout = 0;
      keys = 0;
    }, 500);
    keys += e.key;
  });
})(window, jQuery);




var invalid = false;

$("input[type=number]").bind('keypress input', function(e)
{
  var input = parseInt(e.which);
  // console.log(e.which);

  if (input >= 1776 &&  input <= 1785)
  {
    this.value += String.fromCharCode(input-1728);
    return false;
  }
  else if ((input >= 48 && input <= 57) || input == 13)
  {
    return true;
  }
  else
  {
    return false;
  }
});

$("#mobile").bind('keypress input', function(e)
{
  var input = parseInt(e.which);
  // console.log(e.which);

  if (input >= 1776 &&  input <= 1785)
  {
    this.value += String.fromCharCode(input-1728);
    return false;
  }
  else if ((input >= 48 && input <= 57) || input == 13)
  {
    return true
  }
  else
  {
    return false;
  }
});
