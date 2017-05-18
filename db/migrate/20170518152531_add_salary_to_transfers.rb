class AddSalaryToTransfers < ActiveRecord::Migration
  def change
    add_column :transfers, :salary, :integer
  end
end
