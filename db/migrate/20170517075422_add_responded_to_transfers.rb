class AddRespondedToTransfers < ActiveRecord::Migration
  def change
    add_column :transfers, :responded, :boolean
  end
end
