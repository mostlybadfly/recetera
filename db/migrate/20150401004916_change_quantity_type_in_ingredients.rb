class ChangeQuantityTypeInIngredients < ActiveRecord::Migration
  def change
    change_column :ingredients, :quantity, 'integer USING CAST(quantity AS integer)'
  end
end
