class CreateScotchBottles < ActiveRecord::Migration
  def change
    create_table :scotch_bottles do |t|
      t.string :name
      t.date :vintage
      t.string :notes
      t.string :location
      t.string :size
      t.integer :quantity
      t.integer :rating
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :scotch_bottles, :users
  end
end
