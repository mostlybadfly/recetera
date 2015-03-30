var ready;
ready = function() {
  $("#new_step").on("click", function(obj) {
    $("#recipe_steps").append('<input class="new-step form-control" type="text" name="recipe[instructions][]" placeholder="Type next step">');
  });

  $("#remove_step").on("click", function() {
    var list = document.getElementById("recipe_steps");
    list.removeChild(list.lastChild);
  });
};

$(document).ready(ready);
$(document).on('page:load', ready);
