class AddUsersToWineBottles < ActiveRecord::Migration
  def change
    add_reference :wine_bottles, :user, index: true
    add_foreign_key :wine_bottles, :users
  end
end
