class AddPublishedToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :published, :boolean, default: false
  end
end
