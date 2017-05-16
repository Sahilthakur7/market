class AddUniqueToEnquiries < ActiveRecord::Migration
  def change
      add_index :enquiries, [:player_id, :club_id], unique: true
  end
end
