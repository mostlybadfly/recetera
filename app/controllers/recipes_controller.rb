class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end
  
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
                                     ingredients_attributes: [:id, :_destroy,
                                                              :name, :quantity,
                                                              ])
    end
end
