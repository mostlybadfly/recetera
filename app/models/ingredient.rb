class Ingredient < ActiveRecord::Base
  has_many :recipe_items
  has_many :recipes, through: :recipe_items
  accepts_nested_attributes_for :recipe_items
end
