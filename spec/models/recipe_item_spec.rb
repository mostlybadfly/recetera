require 'rails_helper'

describe RecipeItem do
  it "is invalid without an amount" do
    recipe_item = RecipeItem.new(amount: nil)
    recipe_item.valid?
    expect(recipe_item.errors[:amount]).to include("can't be blank")
  end
end
