jQuery ->
  $('.popup').hide()
  
  $('.popup_link').click ->
    $('.popup').show()
    return false
    
  $('.popup').find('.close').click ->
    $('.popup').hide()