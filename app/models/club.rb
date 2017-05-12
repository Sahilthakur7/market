class Club < ActiveRecord::Base
    validates :name, presence: true, uniqueness: true
    validates :stars, presence: true
    validates :country, presence: true
    has_many :players

    has_attached_file :avatar, :styles=>{ medium: "300x300",thumb: "150x150" }
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
    has_one :clubrep

end
