class Club < ActiveRecord::Base
    has_attached_file :avatar, :styles=> { medium: "300x300" }
end
