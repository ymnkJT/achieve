ready = ->
  $(window).scroll ->
    element = $('#page-top-btn')
    element_blog = $('#blog-page-top-btn')
    visible = element.is(':visible')
    visible_blog = element_blog.is(':visible')
    height = $(window).scrollTop()
    
    if height > 400
      element.fadeIn() if !visible
    else
      element.fadeOut()
  
    if height > 200
      element_blog.fadeIn() if !visible
    else
      element_blog.fadeOut()
  $(document).on 'click', '#move-page-top', ->
    $('html,body').animate({ scrollTop: 0 }, 'slow')
    
$(document).ready(ready)
$(document).on('page:load',ready)