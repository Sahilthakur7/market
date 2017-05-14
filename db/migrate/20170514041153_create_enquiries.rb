class CreateEnquiries < ActiveRecord::Migration
  def change
    create_table :enquiries do |t|
      t.references :player, index: true
      t.references :club, index: true

      t.timestamps null: false
    end
    add_foreign_key :enquiries, :players
    add_foreign_key :enquiries, :clubs
  end
end
