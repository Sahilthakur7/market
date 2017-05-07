class PlayersController < ApplicationController
    def show
        @player = Player.find(params[:id])

    end

    def create

    end

    def index
        @players = Player.all
    end

    def destroy

    end

    def edit

    end

    def new

    end

    def update

    end
end
