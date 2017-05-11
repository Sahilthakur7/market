class AddClubrepToClubs < ActiveRecord::Migration
  def change
    add_reference :clubs, :clubrep, index: true
    add_foreign_key :clubs, :clubreps
  end
end
