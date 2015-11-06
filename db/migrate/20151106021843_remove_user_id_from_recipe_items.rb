class RemoveUserIdFromRecipeItems < ActiveRecord::Migration
  def change
    remove_column :recipe_items, :user_id, :integer
  end
end
