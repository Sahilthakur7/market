class AddResponseToEnquiries < ActiveRecord::Migration
  def change
    add_column :enquiries, :response, :text
  end
end
