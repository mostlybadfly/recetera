class Recipe
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :instructions, type: String

  embeds_many :ingredients

  accepts_nested_attributes_for :ingredients, allow_destroy: true
end
