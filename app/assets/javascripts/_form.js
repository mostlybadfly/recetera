var ready;
ready = function() {
  $("#new_step").on("click", function() {
    $(".rec_form").append('<input class="form-control" type="text" name="recipe[instructions][]">');
  });
};

$(document).ready(ready);
$(document).on('page:load', ready);
