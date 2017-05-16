class AddRespondedToEnquiries < ActiveRecord::Migration
  def change
    add_column :enquiries, :responded, :boolean
  end
end
