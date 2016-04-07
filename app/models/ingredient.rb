class Ingredient < ActiveRecord::Base
  before_save :downcase_fields

  has_many :recipe_items
  has_many :recipes, through: :recipe_items

  validates :name, uniqueness: true

  def downcase_fields
    self.name.downcase!
  end
end
