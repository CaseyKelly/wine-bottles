class AddQuantityToWineBottles < ActiveRecord::Migration
  def change
    add_column :wine_bottles, :quantity, :integer
  end
end
