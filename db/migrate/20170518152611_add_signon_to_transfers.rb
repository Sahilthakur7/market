class AddSignonToTransfers < ActiveRecord::Migration
  def change
    add_column :transfers, :signon, :integer
  end
end
