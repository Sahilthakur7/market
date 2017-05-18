class AddPersonalresponseToTransfers < ActiveRecord::Migration
  def change
    add_column :transfers, :personalresponse, :string
  end
end
