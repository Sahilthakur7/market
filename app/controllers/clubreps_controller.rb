class ClubrepsController < ApplicationController
    def show
        @clubrep = Clubrep.find(params[:id])
        @club = current_clubrep.club || Club.new
    end

    def dealings
        @enquiries = Enquiry.all.where(club: current_clubrep.club)

    end
end
