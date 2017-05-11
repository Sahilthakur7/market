class ClubsController < ApplicationController
    def new
        @club = Club.new

    end

    def create
        @club = Club.create(club_params)
        @club.clubrep = current_clubrep
        
        if @club.save
            flash[:success] = "Your club has been registered."
            redirect_to clubs_path
        else
            render 'new'
        end

    end

    def show
        @club = Club.find(params[:id])

    end

    def index
        @clubs = Club.all

    end

    def edit

    end

    def update
    end

    def destroy

    end

    private

    def club_params
        params.require(:club).permit(:wealth,:name,:country,:stars,:avatar)
    end

end
