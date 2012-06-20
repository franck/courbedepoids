jQuery ->
  $('.popup').hide()
  
  $('.popup_link').click ->
    $('.popup').show()
    $('.popup').find('input[type=text]').filter(':first').focus()
    return false
    
  $('.popup').find('.close').click ->
    $('.popup').hide()
