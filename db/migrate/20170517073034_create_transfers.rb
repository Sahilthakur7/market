class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      t.integer :bid
      t.references :player, index: true
      t.references :club, index: true

      t.timestamps null: false
    end
    add_foreign_key :transfers, :players
    add_foreign_key :transfers, :clubs
  end
end
