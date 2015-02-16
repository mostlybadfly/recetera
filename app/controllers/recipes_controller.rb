class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    @instructions = JSON.parse(@recipe.instructions)
  end
  
  def new
   @recipe = Recipe.new
   @recipe.ingredients.build
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @instructions = JSON.parse(@recipe.instructions)
  end

  def create
    params[:recipe][:instructions] = params[:recipe][:instructions].to_json
    @recipe = Recipe.new(recipe_params)
   
    if @recipe.save
      redirect_to @recipe 
    else
      render "new"
    end
  end

  def update
    params[:recipe][:instructions] = params[:recipe][:instructions].to_json
    @recipe = Recipe.find(params[:id])
    
    if @recipe.update(recipe_params)
      redirect_to @recipe 
    else
      render "edit"
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    redirect_to recipes_path
  end

  private
    def recipe_params
      params.require(:recipe).permit(:title, :instructions,
                                     ingredients_attributes: [:id, :_destroy,
                                                              :name, :quantity])
    end
end
