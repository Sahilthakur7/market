class Transfer < ActiveRecord::Base
  belongs_to :player
  belongs_to :club
default_scope -> { order(created_at: :desc) }
 
  def reject(transfer)
        transfer.responded = true
        transfer.status = "Rejected"
       
  end
end
