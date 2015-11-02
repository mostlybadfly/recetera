class RemoveMeasurementFromIngredients < ActiveRecord::Migration
  def change
    remove_column :ingredients, :measurement, :string
  end
end
