class RecipeItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :ingredient
  accepts_nested_attributes_for :ingredient
end
