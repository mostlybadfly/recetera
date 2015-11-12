class Recipe < ActiveRecord::Base
  belongs_to :user

  has_many :recipe_items
  has_many :ingredients, through: :recipe_items
  accepts_nested_attributes_for :recipe_items

  validates :title, presence: true
  validates :instructions, presence: true
end
