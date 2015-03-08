function slugify(text) {
  return text.toString().toLowerCase()
    .replace(/\s+/g, '-')           // Replace spaces with -
    .replace(/[^\w\-]+/g, '')       // Remove all non-word chars
    .replace(/\-\-+/g, '-')         // Replace multiple - with single -
    .replace(/^-+/, '')             // Trim - from start of text
    .replace(/-+$/, '')             // Trim - from end of text
    .replace(/=.*/, '');            
}

route('*', function() {
  hideFields();

  $(".fields-toggle", this).change(function () {
    var box = $("."+this.value);
    box.toggleClass('disappear');
  });
  $("#options-link", this).click(function () {
    console.log('clicked');
    $("#options-meta").toggleClass('disappear');
  });

  var $deleteConfirm = $('#delete-confirm'),
      $deleteAjaxify = $deleteConfirm.find('a[data-ajaxify]');

  $deleteAjaxify.on('ajaxify:success', function(e, data) {
    if(data.status !== 0) {
      Navigate({
        url: location.href,
        replace: true
      });
    }
  });

  $deleteConfirm.on('open', function(e, link) {
    var $link = $(link);

    $deleteAjaxify.attr('href', $link.attr('href'))
                  .copyData($link);
  });

  var $slug = $('#slug'),
      slug = $slug.get(0),
      handEdited = false;
  if($slug.length) {
    $('#title').keyup(function() {
      var sv = $slug.val();
      if(sv && handEdited) return;
      handEdited = false;
      $slug.val(slugify(this.value));
    });
    $slug.parents('form').submit(function() {
      if(!slug.value) slug.value = slugify($('#title').val());
    });
    $slug.keyup(function() {
      if(this.value) handEdited = true;
    });
  }

  var $options = $('#options-meta');

  if($options.length) {
    $options.find('input').change(function() {
      var data = $options.getData();
      $.ajax({
        url: location.protocol + '//' + location.hostname + 
             location.pathname.slice(0, location.pathname.lastIndexOf('/')+1) + 'options',
        type: 'post',
        data: data,
        dataType: 'json',
        cache: false
      });
    });
  }
});

function hideFields()
{
  $("input:checkbox", document).each(function()
  {
    if( !$(this).is(":checked") )
    {
      $("."+$(this).val()).addClass('disappear');
    }
  }
  );}
