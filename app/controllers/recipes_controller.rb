class RecipesController < ApplicationController
  def new
   @recipe = Recipe.new
   @recipe.ingredients.build
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to "/recipes"
    else
      render "new"
    end
  end

  private
    def recipe_params
      params.require(:recipe).permit(:title, :instructions,
                                     ingredient_attributes: [:name, :quantity])
    end
end
