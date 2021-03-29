class PiecesController < ApplicationController

    
    def index
    end

    def new
    end

    def create
    end

    def show
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private
  
    def piece_params
      params.require(:piece).permit(:artist_id, :museum_id)
    end
end
