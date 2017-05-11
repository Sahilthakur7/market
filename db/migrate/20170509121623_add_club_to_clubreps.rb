class AddClubToClubreps < ActiveRecord::Migration
  def change
    add_reference :clubreps, :club, index: true
    add_foreign_key :clubreps, :clubs
  end
end
