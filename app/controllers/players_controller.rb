class PlayersController < ApplicationController
    def show
        @player = Player.find(params[:id])

    end

    def create
        @player = Player.create(player_params)
        @player.agent_id = current_agent.id
        if @player.save
            flash[:success] = "Player added to the transfer market"
            redirect_to root_path
        end

    end

    def index
        @players = Player.all
    end

    def destroy

    end

    def edit

    end

    def new
        @player = Player.new

    end

    def update
        @player = Player.find(params[:id])
        if @player.update_attributes(player_params)

            redirect_to @player
        else
            render 'show'
        end
    end

    private

    def player_params
        params.require(:player).permit(:name,:position,:value,:club_id,:avatar,:status)
    end
end
