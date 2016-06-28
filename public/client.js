// client-side js
// run by the browser each time your view template is loaded

// protip: you can rename this to use .coffee if you prefer

// by default, you've got jQuery,
// add other scripts at the bottom of index.html

$(function() {
  console.log('hello world :o');
  
  $.get('/dreams', function(dreams) {
    dreams.forEach(function(dream) {
      addDream(dream);
    });
  });

  $('form').submit(function(event) {
    event.preventDefault();
    dream = $('input').val();
    $.post('/dreams?' + $.param({dream: dream}), function() {
      addDream(dream);
      $('input').val('');
      $('input').focus();
    });
  });
  
  function addDream(dream) {
    $('<li style="color:' + dream + '">' + dream + '</li>').appendTo('ul#dreams');
  }

});
