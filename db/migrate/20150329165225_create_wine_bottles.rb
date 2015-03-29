class CreateWineBottles < ActiveRecord::Migration
  def change
    create_table :wine_bottles do |t|
      t.string :name
      t.string :type
      t.string :origin
      t.date :year
      t.string :size
      t.date :purchase_date
      t.string :notes
      t.integer :rating

      t.timestamps null: false
    end
  end
end
