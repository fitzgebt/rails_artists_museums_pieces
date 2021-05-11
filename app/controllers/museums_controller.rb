class MuseumsController < ApplicationController

    
    def index
        @museums = Museum.ordered_list
    end

    def new
        @museum = Museum.new
    end

    def create
        @museum = Museum.new(museum_params)
        if @museum.save
            redirect_to museum_path(@museum)
        else
            render 'new'
        end

    end

    def show
        @museum = Museum.find_by(id: params[:id])
        @piece = @museum.pieces.build(artist_id: current_user.id)
    end

    def open
        @museums = Museum.open_status
    end

    private
  
    def museum_params
      params.require(:museum).permit(:name, :location)
    end
end
