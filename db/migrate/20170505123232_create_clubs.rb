class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :country
      t.integer :stars
      t.string :wealth

      t.timestamps null: false
    end
  end
end
