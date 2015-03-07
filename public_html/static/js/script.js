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


// *********************************************************** Forms
// ***************************************************** Kids
function bindKid() {
  $('#form-kid').on('ajaxify:success', function() {
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
    bindKid();
  }
});
bindKid();


// ***************************************************** Games
function bindBarcode() {
  $('#form-game').on('ajaxify:success', function() {
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


// ***************************************************** points
function bindPoint() {
  $('#form-point').on('ajaxify:success', function(e, data) {
    if(data.status == 1)
    {
      var mymsg = data.msg;
      console.log(mymsg);


      $("#person-avatar").animate({opacity: 1.0}, 3000);

      $("#person-avatar").attr("src","s-up/1000/"+mymsg.code+"-thumb.jpg");

      document.getElementById('person-name').innerHTML = mymsg.name;
      document.getElementById('person-games').innerHTML = mymsg.games;
      document.getElementById('person-points').innerHTML = mymsg.points;

      setTimeout(function()
      {
        $("#person-avatar").attr("src","static/images/face.png");
        document.getElementById('person-name').innerHTML = '';
        document.getElementById('person-games').innerHTML = '';
        document.getElementById('person-points').innerHTML = '';

      }, 5000);
    }
  });
}

$(window).on('statechange', function() {
  history.state.url.indexOf('point')
  if(history.state && history.state.url.indexOf('point') > -1 && !history.state.replace) {
    bindPoint();
  }
});
bindPoint();


// ***************************************************** points
function bindchange() {
  $('#form-change').on('ajaxify:success', function(e, data) {
    if(data.status == 1)
    {
      var mymsg = data.msg;
      console.log(mymsg);


      $("#person-avatar").animate({opacity: 1.0}, 3000);

      $("#person-avatar").attr("src","s-up/1000/"+mymsg.code+"-thumb.jpg");

      document.getElementById('person-name').innerHTML = mymsg.name;
      document.getElementById('person-games').innerHTML = mymsg.games;
      document.getElementById('person-points').innerHTML = mymsg.points;
      document.getElementById('person-prizes').innerHTML = mymsg.prizes;

      setTimeout(function()
      {
        $("#person-avatar").attr("src","static/images/face.png");
        document.getElementById('person-name').innerHTML = '';
        document.getElementById('person-games').innerHTML = '';
        document.getElementById('person-points').innerHTML = '';
        document.getElementById('person-prizes').innerHTML = '';

      }, 10000);
    }
  });
}

$(window).on('statechange', function() {
  history.state.url.indexOf('change')
  if(history.state && history.state.url.indexOf('change') > -1 && !history.state.replace) {
    bindchange();
  }
});
bindchange();



// *********************************************************** handle keypress
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

$("input[type=tel]").bind('keypress input', function(e)
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
// *********************************************************** end handle keypress

$(document).ready(function() {

  if (navigator.userAgent.match(/Android/i)) {
    window.scrollTo(0,0); // reset in case prev not scrolled  
    var nPageH = $(document).height();
    var nViewH = window.outerHeight;
    if (nViewH > nPageH) {
      nViewH -= 250;
      nViewH = nViewH / window.devicePixelRatio;
      $('BODY').css('height',nViewH + 'px');
    }
    window.scrollTo(0,1);
  }

});