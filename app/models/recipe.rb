class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :ingredients
  validates :title, presence: true
  validates :instructions, presence: true
  validates :ingredients, presence: true
  accepts_nested_attributes_for :ingredients, allow_destroy: true
end
