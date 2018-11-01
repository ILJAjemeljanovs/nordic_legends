$(document).on('turbolinks:load', function(){
  $('.show_item_form').on('click', function(){
    $('.item_form').show();
    $(this).hide();
  });
});
