class RemoveClubFromClubreps < ActiveRecord::Migration
  def change
      remove_cloumn :clubreps, :club
  end
end
