class Player < ActiveRecord::Base
    has_attached_file :avatar, :styles=>{ medium: "300x300",thumb: "150x150" }
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
    belongs_to :agent
    belongs_to :club
    validates :agent_id, presence: true
    has_many :enquiries
    has_many :transfers
end
