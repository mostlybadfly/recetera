require 'rails_helper'

describe Recipe do
  it "is valid with a title, ingredient and instruction" do
    recipe = Recipe.new(
      title: "Apple Pie",
      instructions: "Peel the apples.")
    recipe.recipe_items.build(amount: 12).build_ingredient(name: "apples")
    expect(recipe).to be_valid
  end
  
  it "is invalid without a title" do
    recipe = Recipe.new(title: nil)
    recipe.valid?
    expect(recipe.errors[:title]).to include("can't be blank")
  end

  it "is invalid without at least one instruction" do
    recipe = Recipe.new(instructions: nil)
    recipe.valid?
    expect(recipe.errors[:instructions]).to include("can't be blank")
  end
end
