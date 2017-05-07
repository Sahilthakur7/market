class AddNameToClubs < ActiveRecord::Migration
  def change
    add_column :clubs, :name, :string
  end
end
