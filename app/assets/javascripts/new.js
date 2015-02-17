$("#new_step").on("click", function(){
    $("#recipe_form").append('<input type="text" name="recipe[instructions][]">');
})
