class AddAvatarsToClubs < ActiveRecord::Migration
    def self.up
        change_table :clubs do |t|
            t.attachment :avatar
        end
    end

    def self.down
        drop_attached_file :clubs, :avatar
    end
end
