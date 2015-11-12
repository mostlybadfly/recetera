class ChangeColumnTypeInRecipeItems < ActiveRecord::Migration
  def change
    change_column :recipe_items, :amount, :string
  end
end
