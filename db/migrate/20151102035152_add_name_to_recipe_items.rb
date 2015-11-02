class AddNameToRecipeItems < ActiveRecord::Migration
  def change
    add_column :recipe_items, :name, :string
  end
end
