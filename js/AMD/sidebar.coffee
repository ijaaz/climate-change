require ['helpers/jquery-2.1.1.min'], () ->
  $h2 = $ 'h2'
  $h2.each( () -> 
    $_this = $(this);
    $_this.addClass("md-inpage-anchor");
    $(".list-group").append("<li class='list-group-item'><a href='#" + $_this.text().split(' ').join('_') + "'>" + $_this.text() + "</a></li>")
    $_this.attr 'id', $_this.text().split(' ').join('_') 
  )
