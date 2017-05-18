class AddSeenToTransfers < ActiveRecord::Migration
  def change
    add_column :transfers, :seen, :boolean
  end
end
