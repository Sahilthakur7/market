class Enquiry < ActiveRecord::Base
  belongs_to :player
  belongs_to :club
end
