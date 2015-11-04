class CreateRecipeItems < ActiveRecord::Migration
  def change
    create_table :recipe_items do |t|
      t.integer :amount
      t.references :user, index: true
      t.references :ingredient, index: true

      t.timestamps
    end
  end
end
