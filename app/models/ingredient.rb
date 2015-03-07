class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  validates :quantity, presence: true
  validates :name, presence: true
end
