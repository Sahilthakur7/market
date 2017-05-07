class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :age
      t.string :position
      t.integer :value

      t.timestamps null: false
    end
  end
end
