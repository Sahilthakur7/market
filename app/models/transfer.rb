class Transfer < ActiveRecord::Base
  belongs_to :player
  belongs_to :club

  def reject(transfer)
        transfer.responded = true
        transfer.status = "Rejected"
       
  end
end
