class AddSeenToEnquiries < ActiveRecord::Migration
  def change
    add_column :enquiries, :seen, :boolean
  end
end
