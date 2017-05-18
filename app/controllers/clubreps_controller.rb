class ClubrepsController < ApplicationController
    def show
        @clubrep = Clubrep.find(params[:id])
        @club = current_clubrep.club || Club.new
    end

    def dealings
        @enquiries = Enquiry.all.where(club: current_clubrep.club)
        @transfers = Transfer.select do |transfer|
            transfer.player.in?(current_clubrep.club.players)
        end
        @transferbids = Transfer.select do |transfer|
            transfer.club == current_clubrep.club
        end
    end
end
