class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end
  
  def new
   @recipe = Recipe.new
   @recipe.ingredients.build
  end

  def edit
    @recipe = Recipe.find(params[:id]
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipes_path 
    else
      render "new"
    end
  end

  def update
    @recipe = Recipe.find(params[:id])

    if @recipe.update(recipe_params)
      redirect_to recipes_path
    else
      render "edit"
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
