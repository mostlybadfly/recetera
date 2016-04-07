class RecipesController < ApplicationController
  before_action :authenticate_user!

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
    @instructions = JSON.parse(@recipe.instructions)
  end

  def new
   @recipe = Recipe.new
   @recipe.recipe_items.build.build_ingredient
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @instructions = JSON.parse(@recipe.instructions)
  end

  def create
    params[:recipe][:instructions] = params[:recipe][:instructions].to_json
    @recipe = current_user.recipes.build(recipe_params)
    @recipe.published = true if params[:published] == "true"

    if @recipe.save
      redirect_to @recipe
    else
      render "new"
    end
  end

  def update
    params[:recipe][:instructions] = params[:recipe][:instructions].to_json
    @recipe = Recipe.find(params[:id])
    @recipe.published = true if params[:published] == "true"
    @recipe.toggle(:published) if params[:published] == "false"

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
                                     recipe_items_attributes: [:id, :amount, ingredient_attributes:[:name]])
    end
end
