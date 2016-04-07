require 'rails_helper'

describe Ingredient do
  it "is invalid without a unique downcase name" do 
    Ingredient.create(name: "Apple")
    ingredient = Ingredient.new(name: "apple")
    ingredient.valid?
    expect(ingredient.errors[:name]).to include("has already been taken")
  end
end
