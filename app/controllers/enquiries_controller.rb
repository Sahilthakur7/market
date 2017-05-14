class EnquiriesController < ApplicationController
    before_action :set_player

    def new
        @enquiry = Enquiry.new
    end

    def create
        @enquiry = @player.enquiries.new
        @enquiry.club = current_clubrep.club
        if @enquiry.save
            redirect_to dealings_clubrep_path(current_clubrep)
        else
            render 'players/show'
        end
    end


    private

    def set_player
        @player = Player.find(params[:player_id])
    end
end
