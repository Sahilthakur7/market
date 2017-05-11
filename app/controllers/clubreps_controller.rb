class ClubrepsController < ApplicationController
    def show
        @clubrep = Clubrep.find(params[:id])
        @club = current_clubrep.club || Club.new

        

        

    end
end
