require 'rails_helper'
describe Recipe do
  it "is valid with a title, ingredient, and instructions" do
    recipe = Recipe.new(
      title: 'Apple Pie',
      instructions: 'Peel the apples')
    recipe.ingredients.build(
      quantity: 1,
      measurement: 'cup',
      name: 'butter' 
    )
    recipe.save
    expect(recipe).to be_valid
  end
  it "is invalid without a title" do
    recipe = Recipe.new(instructions: 'Peel the apples')

    recipe.ingredients.build(
      quantity: 1,
      measurement: 'cup',
      name: 'butter' 
    )
    recipe.save
    expect(recipe.errors[:title]).to include("can't be blank")
  end
  it "is invalid without at least one ingredient" do
    recipe = Recipe.new(
      title: 'Apple Pie',
      instructions: 'Peel the apples'
    )
    recipe.save
    expect(recipe.errors[:ingredients]).to include("can't be blank")
  end
  it "is invalid without at least one instruction" do
    recipe = Recipe.new(title: 'Apple Pie')

    recipe.ingredients.build(
      quantity: 1,
      measurement: 'cup',
      name: 'butter' 
    )
    recipe.save
    expect(recipe.errors[:instructions]).to include("can't be blank")
  end
end
