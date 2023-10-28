document.addEventListener('DOMContentLoaded', function() {
  var changeColorButtons = document.querySelectorAll('.change-color-button');

  changeColorButtons.forEach(function(button) {
    button.addEventListener('click', function() {
      var cell = button.parentNode;
      var date = cell.getAttribute('data-date');
      var color = button.getAttribute('data-color');

      cell.style.backgroundColor = color;
    });
  });
});
