class DropTableClubs < ActiveRecord::Migration
  def change
      drop_table :clubs
  end
end
