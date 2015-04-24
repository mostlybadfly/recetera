require 'rails_helper'
describe Recipe do
  it "has a valid factory" do
    expect(build(:recipe_with_ingredients)).to be_valid
  end

  it "is valid with a title, ingredient, and instructions" do
    recipe = build(:recipe_with_ingredients)
    puts recipe.title
    expect(recipe).to be_valid
  end
  it "is invalid without a title" do
    recipe = build(:recipe_with_ingredients, title: nil)
    recipe.valid?
    expect(recipe.errors[:title]).to include("can't be blank")
  end
  it "is invalid without at least one ingredient" do
    recipe = build(:recipe) 
    recipe.valid?
    expect(recipe.errors[:ingredients]).to include("can't be blank")
  end
  it "is invalid without at least one instruction" do
    recipe = build(:recipe_with_ingredients, instructions: nil)
    recipe.valid?
    expect(recipe.errors[:instructions]).to include("can't be blank")
  end
end
