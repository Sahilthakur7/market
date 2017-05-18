class TransfersController < ApplicationController
    before_action :set_player

    def new
        @transfer = Transfer.new
    end

    def create
        @transfer = Transfer.new(transfer_params)
        @transfer.club = current_clubrep.club
        @transfer.player = @player
        if @transfer.save
            redirect_to dealings_clubrep_path(current_clubrep)
        else
            render 'players/show'
        end
    end

    def show
        @transfer = Transfer.find(params[:id])
    end

    def respond
        @transfer = Transfer.find(params[:id])
        

    end

    def update
        @transfer = Transfer.find(params[:id])
        @transfer.responded = true
        if @transfer.update_attributes(enquiry_params)
            if agent_signed_in?
            redirect_to dealings_agent_path(current_agent)
            else 
                redirect_to dealings_clubrep_path(current_clubrep)
            end
        end
    end

    def reject
        @transfer = Transfer.find(params[:id])
        @transfer.responded = true
        @transfer.status = "Rejected"
        @transfer.save!
        redirect_to root_path

    end

    def accept
        @transfer = Transfer.find(params[:id])
        @transfer.responded = true
        @transfer.status = "Accepted"
        @transfer.save!
        redirect_to root_path

    end


    private

    def transfer_params
        params.require(:transfer).permit(:response,:seen,:bid)
    end

    def set_player
        @player = Player.find(params[:player_id])
    end
end
