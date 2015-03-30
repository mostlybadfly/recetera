var ready;
ready = function() {
  $("#new_step").on("click", function(obj) {
    $("#recipe_steps").append('<input class="new-step form-control" type="text" name="recipe[instructions][]" placeholder="Type next step"><a href="javascript:void(0)" class="remove_step">Remove Step</a>');
  });

  $(document).on("click", ".remove_step", function() {
    $(this).prev("input[type=text]").remove();
    $(this).remove()
  });
};

$(document).ready(ready);
$(document).on('page:load', ready);
