class Enquiry < ActiveRecord::Base
  belongs_to :player
  belongs_to :club
  validates :player_id, uniqueness: {scope: :club_id}
  default_scope -> { order(created_at: :desc) }
  




end
