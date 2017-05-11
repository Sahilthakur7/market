class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.integer :stars
      t.string :wealth
      t.string :country

      t.timestamps null: false
    end
  end
end
