class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  validates :quantity, presence: true, numericality: true
  validates :name, presence: true
end
