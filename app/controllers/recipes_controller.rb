class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    @recipe.ingredients.build
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.save
    redirect_to :back
  end

  private
    def recipe_params
      params.require(:recipe).permit(:title, :instructions,
                                     ingredients_attributes: [:name, :quantity])
    end
end
