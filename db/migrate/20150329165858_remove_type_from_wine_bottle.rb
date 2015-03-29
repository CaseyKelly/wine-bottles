class RemoveTypeFromWineBottle < ActiveRecord::Migration
  def change
    rename_column :wine_bottles, :type, :style
  end
end
