class AddRecipeIdToRecipeItems < ActiveRecord::Migration
  def change
    add_column :recipe_items, :recipe_id, :integer
  end
end
