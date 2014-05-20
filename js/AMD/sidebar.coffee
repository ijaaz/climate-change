require ['helpers/jquery-2.1.1.min'], () ->
  $h2 = $ 'h2'
  $h2.each( () -> 
    $_this = $(this);
    $_this.addClass("md-inpage-anchor");
    $(".list-group").append("<a class='list-group-item' href='#" + $_this.text().split(' ').join('_') + "'>" + $_this.text() + "</a>")
    $_this.attr 'id', $_this.text().split(' ').join('_') 
  )
  $('.affix').affix({
        offset: { top: $('#nav').offset().top }
  })
