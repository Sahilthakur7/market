class Player < ActiveRecord::Base
    has_attached_file :avatar, :styles=>{ medium: "300x300",thumb: "150x150" }
end
