class AgentsController < ApplicationController
    def show
        @agent = Agent.find(params[:id])
        @player = Player.new
    end

    def players
        @players = Player.all
    end

    def dealings
    end
end
