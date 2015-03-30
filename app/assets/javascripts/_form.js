var ready;
ready = function() {
  $("#new_step").on("click", function(obj) {
    $(".steps").append('<input class="new-step form-control" type="text" name="recipe[instructions][]" placeholder="Type next step">');
  });

  $("#remove_step").on("click", function() {
    $(".new-step").remove();
  });
};

$(document).ready(ready);
$(document).on('page:load', ready);
