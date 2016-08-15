// client-side js
// run by the browser each time your view template is loaded

// protip: you can rename this to use .coffee if you prefer

// by default, you've got jQuery,
// add other scripts at the bottom of index.html

$(function() {
  console.log('hello world :o');

  $('form').submit(function(event) {
    event.preventDefault();
    dream = $('input').val();
    $('<li>'+ dream + '</li>').appendTo('ul');
    $('input').val('');
    $('input').focus();
  });

});
