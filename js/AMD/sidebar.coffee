require ['helpers/jquery-2.1.1.min'], () ->
  $h2 = $ 'h2'
  $h2.each( () -> 
    $(".list-group").append("<li class='list-group-item'><a href='" + $(this).text() + "'>" + $(this).text() + "</a></li>")
  )
