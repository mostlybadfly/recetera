class Ingredient
  include Mongoid::Document
  include Mongoid::Timestamps

  field :quantity, type: Integer
  field :measurement, type: String
  field :name, type: String
  
  embedded_in :recipe
end
