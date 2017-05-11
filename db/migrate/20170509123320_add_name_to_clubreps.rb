class AddNameToClubreps < ActiveRecord::Migration
  def change
    add_column :clubreps, :name, :string
  end
end
