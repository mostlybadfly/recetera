var ready;
ready = function() {
  $("#new_step").on("click", function() {
    $(".steps").append('<input class="form-control" type="text" name="recipe[instructions][]">');
  });
};

$(document).ready(ready);
$(document).on('page:load', ready);
