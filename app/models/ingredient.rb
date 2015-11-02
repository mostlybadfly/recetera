class Ingredient < ActiveRecord::Base
  has_many :recipe_items
  validates :name, presence: true
end
