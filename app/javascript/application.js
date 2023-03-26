// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// Ajax chưa được
$(document).ready(function(){
  $('.ajax').on('click', function(){
    $.ajax({
      url: '/articles/', //+ this.parentElement.id,
      type: 'GET',
      success: function(r){}
    })
  })
})
