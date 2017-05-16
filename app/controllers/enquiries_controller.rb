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

    def show
        @enquiry = Enquiry.find(params[:id])
    end

    def respond
        @enquiry = Enquiry.find(params[:id])
        

    end

    def update
        @enquiry = Enquiry.find(params[:id])
        @enquiry.responded = true
        if @enquiry.update_attributes(enquiry_params)
            if agent_signed_in?
            redirect_to dealings_agent_path(current_agent)
            else 
                redirect_to dealings_clubrep_path(current_clubrep)
            end
        end
    end


    private

    def enquiry_params
        params.require(:enquiry).permit(:response,:seen)
    end

    def set_player
        @player = Enquiry.find(params[:id]).player
    end
end
