class AddClubToPlayers < ActiveRecord::Migration
  def change
    add_reference :players, :club, index: true
    add_foreign_key :players, :clubs
  end
end
