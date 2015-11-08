class RecipeItemsController < Application Controller
  def new
    @recipe_item = RecipeItem.new
    @recipe_item.build_ingredient
  end
end
