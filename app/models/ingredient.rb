class Ingredient
  include Mongoid::Document
  include Mongoid::Timestamps

  field :measurement, type: Integer
  field :quantity, type: String
  field :name, type: String
  
  embedded_in :recipe
end
