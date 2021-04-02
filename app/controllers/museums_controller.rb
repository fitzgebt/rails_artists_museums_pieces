class MuseumsController < ApplicationController

    
    def index
        @museums = Museum.all
    end

    def new
        @museum = Museum.new
    end

    def create
        museum = Museum.create(museum_params)
        redirect_to museum_path(museum)
    end

    def show
        @museum = Museum.find_by(id: params[:id])
        @piece = @museum.pieces.build(artist_id: current_user.id)
    end

    def edit
        @museum = Museum.find_by(id: params[:id])
        @piece = @museum.pieces.build(artist_id: current_user.id)
    end

    def update
        museum = Museum.find_by(id: params[:id])
        museum.update(museum_params)
        redirect_to museum_path(museum)
    end

    def open
        @museums = Museum.open_status
    end

    private
  
    def museum_params
      params.require(:museum).permit(:name, :location)
    end
end
