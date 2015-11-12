class AddRecipeIdIndexToRecipeItems < ActiveRecord::Migration
  def change
    add_index :recipe_items, :recipe_id
  end
end
