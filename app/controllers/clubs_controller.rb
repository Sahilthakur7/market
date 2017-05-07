class ClubsController < ApplicationController
    def new

    end

    def create

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
end
